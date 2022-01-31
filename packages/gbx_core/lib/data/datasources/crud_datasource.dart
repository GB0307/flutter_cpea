import 'package:equatable/equatable.dart';
import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/params/query_params.dart';

abstract class ICRUDDataSource {
  const ICRUDDataSource();

  Future<CRUDData> create(Map<String, dynamic> data);
  Future<CRUDData> read(String id);
  Future<CRUDData> update(String id, Map<String, dynamic> updated);
  Future<void> delete(String id);

  Future<List<CRUDData>> query(QueryParams query);
}

class CRUDData extends Equatable {
  const CRUDData(this.id, this.data);

  final String id;
  final Map<String, dynamic> data;

  @override
  List<Object?> get props => [id, data];

  T map<T>(Deserializer<T> deserializer) {
    return deserializer({...data, 'id': id});
  }
}
