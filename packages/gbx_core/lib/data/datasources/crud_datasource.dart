import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/index.dart';

import '../../domain/params/delete_params.dart';

abstract class ICRUDDataSource<T extends Identifiable> {
  const ICRUDDataSource();

  Future<CRUDData<T>> create(ICreateParams<T> params);
  Future<CRUDData<T>> read(IReadParams<T> params);
  Future<CRUDData<T>> update(IUpdateParams<T> params);
  Future<void> delete(IDeleteParams<T> params);

  Future<List<CRUDData<T>>> query(IQueryParams<T> params);
}
