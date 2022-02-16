import 'package:gbx_core/domain/index.dart';

abstract class IReadParams<T> extends IParam implements IdParam {
  @override
  final String id;

  const IReadParams({required this.id});

  @override
  IReadParams copyWith({String? id});
}

class ReadParams<T> extends IReadParams<T> {
  const ReadParams({required String id}) : super(id: id);

  @override
  List<Object?> get props => [id];

  @override
  ReadParams copyWith({String? id}) {
    return ReadParams(id: id ?? this.id);
  }
}
