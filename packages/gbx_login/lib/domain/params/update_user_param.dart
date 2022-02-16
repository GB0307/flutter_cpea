import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/domain/index.dart';

abstract class IUpdateUserParams<T extends Identifiable> extends IParam
    implements Identifiable {
  IUpdateUserParams({required this.item, String? userId})
      : id = userId ?? item.id;

  @override
  final String? id;
  final T item;

  @override
  IUpdateUserParams<T> copyWith({String? userId, T? item});
}

class UpdateUserParams<T extends Identifiable> extends IUpdateUserParams<T> {
  UpdateUserParams({required T item, String? userId})
      : super(item: item, userId: userId);

  @override
  IUpdateUserParams<T> copyWith({String? userId, T? item}) =>
      UpdateUserParams(item: item ?? this.item, userId: userId ?? id);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
