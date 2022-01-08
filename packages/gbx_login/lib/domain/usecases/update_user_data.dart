import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/repositories/user_data_repository.dart';
import 'package:gbx_login/domain/repositories/user_repository.dart';

class UpdateUserData<T> extends IAsyncUseCase<T, UpdateUserParams> {
  UpdateUserData(this._repo, this._userRepo);

  final IUserDataRepository<T> _repo;
  final IUserRepository _userRepo;

  @override
  Future<DResponse<T>> call(UpdateUserParams params) async {
    var userId = params.userId ?? "";

    if (userId.isEmpty) {
      var resp = _userRepo.getCurrentUser();
      if (resp.didFail) {
        return DResponse<T>.from(resp.failure);
      }
      userId = resp.data.uid;
    }
    return await _repo.updateUserData(userId, params.updatedUser);
  }
}

class UpdateUserParams<T> {
  final T updatedUser;
  final String? userId;

  const UpdateUserParams(this.updatedUser, {this.userId});
}
