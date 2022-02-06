import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/repositories/user_repository.dart';

class UpdateUserData<T extends Identifiable>
    extends IAsyncUseCase<T, UpdateUserParams<T>> {
  UpdateUserData(this._repo, this._userRepo);

  final ICRUDRepository<T> _repo;
  final IUserRepository _userRepo;

  @override
  Future<DResponse<T>> call(UpdateUserParams<T> params) async {
    var userId = params.userId ?? "";

    if (userId.isEmpty) {
      var resp = _userRepo.getCurrentUser();
      if (resp.didFail) {
        return DResponse<T>.from(resp.failure);
      }
      userId = resp.data.uid;
    }
    return await _repo.update(userId, params.updatedUser);
  }
}

class UpdateUserParams<T extends Identifiable> {
  final T updatedUser;
  final String? userId;

  const UpdateUserParams(this.updatedUser, {this.userId});
}
