import 'package:equatable/equatable.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/domain/index.dart';

abstract class ICreateParams<T> extends IParam implements Identifiable {
  final T item;
  @override
  final String? id;
  const ICreateParams({required this.item, this.id});

  @override
  ICreateParams<T> copyWith({T? item});
}

class CreateParams<T> extends ICreateParams<T> {
  const CreateParams({required T item, String? id}) : super(item: item, id: id);

  @override
  List<Object?> get props => [item, id];

  @override
  CreateParams<T> copyWith({T? item}) {
    return CreateParams<T>(item: item ?? this.item);
  }
}
