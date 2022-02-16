import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_core/domain/index.dart';

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
  Future<CRUDData<T>> create(ICreateParams<T> params) async {
    var newData = await datasource.create(params);
    return await cacheDatasource.create(params.copyWith(item: newData.item));
  }

  @override
  Future<void> delete(IDeleteParams<T> params) async {
    await datasource.delete(params);
    await cacheDatasource.delete(params);
  }

  @override
  Future<List<CRUDData<T>>> query(IQueryParams<T> params) =>
      cacheStrategy.query(
        params: params,
        datasource: datasource,
        cacheDatasource: cacheDatasource,
      );

  @override
  Future<CRUDData<T>> read(IReadParams<T> params) => cacheStrategy.read<T>(
        params: params,
        datasource: datasource,
        cacheDatasource: cacheDatasource,
      );

  @override
  Future<CRUDData<T>> update(IUpdateParams<T> params) async {
    var newData = await datasource.update(params);

    return await cacheDatasource.update(params.copyWith(item: newData.item));
  }
}
