import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/core/interfaces/repository.dart';
import 'package:gbx_core/domain/index.dart';
import 'package:gbx_core/domain/params/delete_params.dart';

abstract class ICRUDRepository<T extends Identifiable> extends IRepository {
  const ICRUDRepository();

  AsyncResponse<T> create(ICreateParams<T> params);
  AsyncResponse<T> read(IReadParams<T> params);
  AsyncResponse<T> update(IUpdateParams<T> params);
  AsyncResponse<void> delete(IDeleteParams<T> params);
  AsyncResponse<List<T>> query(IQueryParams<T> params);
}
