import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_core/domain/repositories/crud_repository.dart';

class CRUDRepository<T> extends ICRUDRepository<T> {
  const CRUDRepository(this._datasource) : super();

  final ICRUDDataSource<T> _datasource;

  @override
  Future<DResponse<T>> create(T data) =>
      runCatchingAsync(() => _datasource.create(data));

  @override
  Future<DResponse<void>> delete(String id) =>
      runCatchingAsync(() => _datasource.delete(id));

  @override
  Future<DResponse<T>> read(String id) =>
      runCatchingAsync(() => _datasource.read(id));

  @override
  Future<DResponse<T>> update(T updated) =>
      runCatchingAsync(() => _datasource.update(updated));

  @override
  IFailure? catchExceptions(Exception e) {}
}
