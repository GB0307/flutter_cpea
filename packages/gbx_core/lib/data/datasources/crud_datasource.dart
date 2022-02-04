import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/params/query_params.dart';

import '../../domain/entities/crud_data.dart';

abstract class ICRUDDataSource<T extends Identifiable> {
  const ICRUDDataSource();

  Future<CRUDData<T>> create(T item, [String? id]);
  Future<CRUDData<T>> read(String id);
  Future<CRUDData<T>> update(String id, T updated);
  Future<void> delete(String id);

  Future<List<CRUDData<T>>> query(QueryParams query);
}
