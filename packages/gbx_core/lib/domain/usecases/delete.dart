import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/index.dart';

class Delete extends IAsyncUseCase<void, DeleteParams> {
  const Delete(this._repository) : super();

  final ICRUDRepository _repository;

  @override
  Future<DResponse<void>> call(DeleteParams params) {
    return _repository.delete(params.id);
  }
}

class DeleteParams extends IdParam {
  const DeleteParams({required String id}) : super(id);
}
