import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/repositories/user_data_repository.dart';
import 'package:gbx_login/domain/repositories/user_repository.dart';

class GetUserData<T> extends IAsyncUseCase<T, String?> {
  GetUserData(this._repo, this._userRepo);

  final IUserDataRepository<T> _repo;
  final IUserRepository _userRepo;

  @override
  // ignore: avoid_renaming_method_parameters
  Future<DResponse<T>> call([String? userId]) async {
    var uid = userId ?? "";

    if (uid.isEmpty) {
      var resp = _userRepo.getUserId();
      var failedResp = resp.on(
        success: (data) => uid = data,
        failure: (failure) => DResponse<T>.from(failure),
      );
      if (failedResp != null) {
        return failedResp;
      }
    }

    return await _repo.getUserData(uid);
  }
}
