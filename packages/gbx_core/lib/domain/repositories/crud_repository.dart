import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/core/interfaces/repository.dart';
import 'package:gbx_core/domain/index.dart';

abstract class ICRUDRepository<T extends Identifiable> extends IRepository {
  const ICRUDRepository();

  AsyncResponse<T> create(T data);
  AsyncResponse<T> read(String id);
  AsyncResponse<T> update(String id, T updated);
  AsyncResponse<void> delete(String id);
  AsyncResponse<List<T>> query(QueryParams params);
}
