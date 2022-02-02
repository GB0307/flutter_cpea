import 'package:gbx_core/core/interfaces/cache_strategy.dart';
import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_core/domain/params/query_params.dart';

class CacheableCRUDDataSource extends ICRUDDataSource {
  final ICacheStrategy cacheStrategy;

  final ICRUDDataSource datasource, cacheDatasource;

  const CacheableCRUDDataSource(
      {required this.cacheStrategy,
      required this.datasource,
      required this.cacheDatasource});

  @override
  Future<CRUDData> create(Map<String, dynamic> data, [String? id]) async {
    var newData = await datasource.create(data, id);
    return await cacheDatasource.create(newData.data, newData.id);
  }

  @override
  Future<void> delete(String id) async {
    await datasource.delete(id);
    await cacheDatasource.delete(id);
  }

  @override
  Future<List<CRUDData>> query(QueryParams query) => cacheStrategy.query(
      params: query, datasource: datasource, cacheDatasource: cacheDatasource);

  @override
  Future<CRUDData> read(String id) => cacheStrategy.read(
      id: id, datasource: datasource, cacheDatasource: cacheDatasource);

  @override
  Future<CRUDData> update(String id, Map<String, dynamic> updated) async {
    var newData = await datasource.update(id, updated);
    return await cacheDatasource.update(id, newData.data);
  }
}
