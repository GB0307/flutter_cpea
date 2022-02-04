import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_core/domain/params/query_params.dart';

class CacheableCRUDDataSource<T extends Identifiable>
    extends ICRUDDataSource<T> {
  final CacheStrategy cacheStrategy;

  final ICRUDDataSource<T> datasource, cacheDatasource;

  const CacheableCRUDDataSource(
      {required this.cacheStrategy,
      required this.datasource,
      required this.cacheDatasource})
      : super();

  @override
  Future<CRUDData<T>> create(T item, [String? id]) async {
    var newData = await datasource.create(item, id);
    return await cacheDatasource.create(newData.item, newData.id);
  }

  @override
  Future<void> delete(String id) async {
    await datasource.delete(id);
    await cacheDatasource.delete(id);
  }

  @override
  Future<List<CRUDData<T>>> query(QueryParams query) => cacheStrategy.query(
      params: query, datasource: datasource, cacheDatasource: cacheDatasource);

  @override
  Future<CRUDData<T>> read(String id) => cacheStrategy.read<T>(
      id: id, datasource: datasource, cacheDatasource: cacheDatasource);

  @override
  Future<CRUDData<T>> update(String id, T updated) async {
    var newData = await datasource.update(id, updated);
    return await cacheDatasource.update(id, newData.item);
  }
}
