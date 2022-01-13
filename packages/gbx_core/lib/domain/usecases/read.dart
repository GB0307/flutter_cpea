import 'package:equatable/equatable.dart';
import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/index.dart';

class Read<T extends Identifiable> extends IAsyncUseCase<T, GetParams> {
  const Read(this._repository) : super();

  final ICRUDRepository<T> _repository;

  @override
  Future<DResponse<T>> call(GetParams params) {
    return _repository.read(params.id);
  }
}

class GetParams extends IdParam {
  const GetParams({required String id}) : super(id);
}
