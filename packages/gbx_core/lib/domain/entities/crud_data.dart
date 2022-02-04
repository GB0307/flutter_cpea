import 'package:equatable/equatable.dart';

import '../../core/interfaces/index.dart';

class CRUDData<T extends Identifiable> extends Equatable {
  const CRUDData(
      this.id, Map<String, dynamic> data, Deserializer<T> deserializer)
      : _data = data,
        _deserializer = deserializer;

  final Map<String, dynamic> _data;
  final Deserializer<T> _deserializer;

  final String id;
  Map<String, dynamic> get data => {..._data, 'id': id};
  T get item => _deserializer(data);

  @override
  List<Object?> get props => [id, _data, item];
}
