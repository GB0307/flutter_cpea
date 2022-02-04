import 'package:equatable/equatable.dart';
import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/params/query_params.dart';

abstract class ICRUDDataSource<T extends Identifiable> {
  const ICRUDDataSource();

  Future<CRUDData<T>> create(T item, [String? id]);
  Future<CRUDData<T>> read(String id);
  Future<CRUDData<T>> update(String id, T updated);
  Future<void> delete(String id);

  Future<List<CRUDData<T>>> query(QueryParams query);
}

class CRUDData<T extends Identifiable> extends Equatable {
  const CRUDData(this.id, this.data, this.item);

  final String id;
  final Map<String, dynamic> data;
  final T item;

  @override
  List<Object?> get props => [id, data, item];
}
