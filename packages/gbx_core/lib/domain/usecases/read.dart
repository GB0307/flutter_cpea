import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/index.dart';

class Read<T extends Identifiable> extends IAsyncUseCase<T, IReadParams<T>> {
  const Read(this._repository) : super();

  final ICRUDRepository<T> _repository;

  @override
  Future<DResponse<T>> call(IReadParams<T> params) {
    return _repository.read(params);
  }
}
