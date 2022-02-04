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
  const CRUDData(this.id, Map<String, dynamic> data, this.item) : _data = data;

  final Map<String, dynamic> _data;

  final String id;
  Map<String, dynamic> get data => {..._data, 'id': id};
  final T item;

  @override
  List<Object?> get props => [id, _data, item];
}
