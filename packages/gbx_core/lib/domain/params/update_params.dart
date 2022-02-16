import 'package:gbx_core/domain/params/param.dart';

import 'id_params.dart';

abstract class IUpdateParams<T> extends IParam implements IdParam {
  const IUpdateParams({required this.id, required this.item});
  final T item;

  @override
  final String id;

  @override
  IUpdateParams<T> copyWith({T? item, String? id});
}

class UpdateParams<T> extends IUpdateParams<T> {
  const UpdateParams({required T item, required String id})
      : super(item: item, id: id);

  @override
  List<Object?> get props => [item];

  @override
  UpdateParams<T> copyWith({T? item, String? id}) {
    return UpdateParams(item: item ?? this.item, id: id ?? this.id);
  }
}
