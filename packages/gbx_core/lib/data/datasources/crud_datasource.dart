import 'package:gbx_core/core/interfaces/index.dart';

abstract class ICRUDDataSource<T> {
  const ICRUDDataSource();

  Future<T> create(T data);
  Future<T> read(String id);
  Future<T> update(T updated);
  Future<void> delete(String id);
}
