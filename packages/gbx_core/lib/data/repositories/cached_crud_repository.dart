import 'package:gbx_core/core/errors/exceptions.dart';
import 'package:gbx_core/core/errors/failures.dart';
import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/data/datasources/cache_datasource.dart';
import 'package:gbx_core/data/index.dart';
import 'package:gbx_core/domain/index.dart';

class CachedCRUDRepository<T extends Identifiable> extends ICRUDRepository<T> {
  const CachedCRUDRepository({
    required this.datasource,
    required this.cacheDatasource,
    this.preferCache = true,
    this.updateCacheOnQuery = true,
    this.defaultUpdateLimit = 100,
  }) : super();

  final ICacheDataSource<T> cacheDatasource;
  final ICRUDDataSource<T> datasource;

  final bool preferCache;
  final bool updateCacheOnQuery;
  final int defaultUpdateLimit;

  @override
  Future<DResponse<T>> create(T data) => runCatchingAsync(() async {
        var newData = await datasource.create(data);
        await cacheDatasource.cache(newData);
        return newData;
      });

  @override
  Future<DResponse<void>> delete(String id) => runCatchingAsync(() async {
        await datasource.delete(id);
        await cacheDatasource.remove(id);
      });

  @override
  Future<DResponse<T>> read(String id, [bool? forceRefresh]) =>
      runCatchingAsync(() async {
        T? data;
        if (!(forceRefresh ?? !preferCache) &&
            await cacheDatasource.hasCached(id)) {
          data = await cacheDatasource.get(id);
        }
        data ??= await datasource.read(id);

        return data;
      });

  @override
  Future<DResponse<T>> update(String id, T updated) =>
      runCatchingAsync(() async {
        var newData = await datasource.update(updated);
        cacheDatasource.cache(newData);
        return newData;
      });

  @override //TODO
  Future<DResponse<List<T>>> query(QueryParams params,
          [bool? forceRefresh, bool? updateCache]) =>
      runCatchingAsync(() async {
        List<T> items = [];

        // Try getting the data from cache
        if (!(forceRefresh ?? !preferCache)) {
          items = await cacheDatasource.query(params);
        }

        // Get the current data and add the server data
        if (items.isNotEmpty && (updateCache ?? updateCacheOnQuery)) {
          final newItems = await datasource.query(
            params.copyWith(
                limit: params.limit ?? defaultUpdateLimit,
                endBefore: items.first.id),
          );
          items = [...newItems, ...items];
        }

        // If no data in cache or force refresh, get the data from source
        if (items.isEmpty) items = await datasource.query(params);

        return items;
      });

  @override
  IFailure? catchExceptions(Exception exception) {
    return on<NoCachedDataException>(exception, (e) => NoCachedDataFailure()) ??
        on<NoDataException>(exception, (e) => NoDataFailure()) ??
        on<UnauthorizedException>(exception, (e) => UnauthorizedFailure());
  }
}
