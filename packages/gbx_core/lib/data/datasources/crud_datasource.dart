import 'package:gbx_core/core/interfaces/identifiable.dart';
import 'package:gbx_core/domain/params/query_params.dart';

abstract class ICRUDDataSource<T extends Identifiable> {
  const ICRUDDataSource();

  Future<T> create(T data);
  Future<T> read(String id);
  Future<T> update(T updated);
  Future<void> delete(String id);

  Future<List<T>> query(QueryParams query);
}
