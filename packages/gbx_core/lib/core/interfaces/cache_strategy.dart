import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_core/domain/index.dart';

abstract class ICacheStrategy {
  Future<CRUDData> read({
    required String id,
    required ICRUDDataSource datasource,
    required ICRUDDataSource cacheDatasource,
  });

  Future<CRUDData> update(
      {required ICRUDDataSource datasource,
      required ICRUDDataSource cacheDatasource});

  Future<List<CRUDData>> query({
    required QueryParams params,
    required ICRUDDataSource datasource,
    required ICRUDDataSource cacheDatasource,
  });
}

class CacheStrategy extends ICacheStrategy {
  @override
  Future<List<CRUDData>> query(
      {required QueryParams params,
      required ICRUDDataSource datasource,
      required ICRUDDataSource cacheDatasource}) {
    // TODO: implement query
    throw UnimplementedError();
  }

  @override
  Future<CRUDData> read(
      {required String id,
      required ICRUDDataSource datasource,
      required ICRUDDataSource cacheDatasource}) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<CRUDData> update(
      {required ICRUDDataSource datasource,
      required ICRUDDataSource cacheDatasource}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
