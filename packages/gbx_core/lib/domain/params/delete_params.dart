import 'package:gbx_core/domain/index.dart';

abstract class IDeleteParams<T> extends IParam implements IdParam {
  @override
  final String id;

  const IDeleteParams({required this.id}) : super();

  @override
  IDeleteParams<T> copyWith({String? id});
}

class DeleteParams<T> extends IDeleteParams {
  const DeleteParams({required String id}) : super(id: id);

  @override
  DeleteParams<T> copyWith({String? id}) => DeleteParams(id: id ?? this.id);

  @override
  List<Object?> get props => [id];
}
