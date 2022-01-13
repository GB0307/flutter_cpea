import 'package:equatable/equatable.dart';
import 'package:gbx_core/core/interfaces/identifiable.dart';
import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/repositories/crud_repository.dart';

class Update<T extends Identifiable> extends IAsyncUseCase<T, UpdateParams> {
  const Update(this._repository) : super();

  final ICRUDRepository<T> _repository;

  @override
  Future<DResponse<T>> call(UpdateParams params) {
    return _repository.read(params.data);
  }
}

class UpdateParams<T> extends Equatable {
  const UpdateParams({required this.data});
  final T data;

  @override
  List<Object?> get props => [data];
}
