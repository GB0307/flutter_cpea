import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/core/interfaces/repository.dart';

abstract class ICRUDRepository<T> extends IRepository {
  const ICRUDRepository();

  Future<DResponse<T>> create(T data);
  Future<DResponse<T>> read(String id);
  Future<DResponse<T>> update(T updated);
  Future<DResponse<void>> delete(String id);
}
