import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/repositories/user_data_repository.dart';

class GetCachedUserData<T> extends IResponseUseCase<T, String?> {
  const GetCachedUserData(this._repo);

  final IUserDataRepository<T> _repo;

  @override
  // ignore: avoid_renaming_method_parameters
  DResponse<T> call([String? tag]) {
    return _repo.getCachedUserData();
  }
}
