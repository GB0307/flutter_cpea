import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/repositories/crud_repository.dart';

import '../params/update_params.dart';

class Update<T extends Identifiable>
    extends IAsyncUseCase<T, IUpdateParams<T>> {
  const Update(this._repository) : super();

  final ICRUDRepository<T> _repository;

  @override
  Future<DResponse<T>> call(IUpdateParams<T> params) {
    return _repository.update(params);
  }
}
