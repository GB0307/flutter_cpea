import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/index.dart';

import '../params/delete_params.dart';

class Delete<T extends Identifiable>
    extends IAsyncUseCase<void, IDeleteParams<T>> {
  const Delete(this._repository) : super();

  final ICRUDRepository _repository;

  @override
  Future<DResponse<void>> call(IDeleteParams<T> params) {
    return _repository.delete(params);
  }
}
