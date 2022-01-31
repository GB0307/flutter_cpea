import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_core/domain/params/query_params.dart';

class CacheableCRUDDataSource extends ICRUDDataSource {
  @override
  Future<CRUDData> create(Map<String, dynamic> data) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<CRUDData>> query(QueryParams query) {
    // TODO: implement query
    throw UnimplementedError();
  }

  @override
  Future<CRUDData> read(String id) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<CRUDData> update(String id, Map<String, dynamic> updated) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
