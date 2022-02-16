import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/params/create_params.dart';
import 'package:gbx_core/domain/repositories/crud_repository.dart';

class Create<T extends Identifiable>
    extends IAsyncUseCase<T, ICreateParams<T>> {
  const Create(this._repository) : super();

  final ICRUDRepository<T> _repository;

  @override
  Future<DResponse<T>> call(ICreateParams<T> params) {
    return _repository.create(params);
  }
}
