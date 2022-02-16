import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/index.dart';

class Query<T extends Identifiable>
    extends IAsyncUseCase<List<T>, IQueryParams<T>> {
  const Query(this._repository) : super();

  final ICRUDRepository<T> _repository;

  @override
  Future<DResponse<List<T>>> call(
      [IQueryParams<T> params = const QueryParams()]) {
    return _repository.query(params);
  }
}
