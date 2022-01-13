import 'package:equatable/equatable.dart';
import 'package:gbx_core/core/interfaces/identifiable.dart';
import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/repositories/crud_repository.dart';

class Create<T extends Identifiable> extends IAsyncUseCase<T, CreateParams<T>> {
  const Create(this._repository) : super();

  final ICRUDRepository<T> _repository;

  @override
  Future<DResponse<T>> call(CreateParams params) {
    return _repository.create(params.data);
  }
}

class CreateParams<T> extends Equatable {
  const CreateParams({required this.data});
  final T data;

  @override
  List<Object?> get props => [data];
}
