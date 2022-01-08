import 'package:cpea/src/core/interfaces/response.dart';
import 'package:cpea/src/core/interfaces/use_case.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:cpea/src/features/login/domain/repositories/user_data_repository.dart';
import 'package:cpea/src/features/login/domain/repositories/user_repository.dart';

class UpdateUserData extends IAsyncUseCase<UserData, UpdateUserParams> {
  UpdateUserData(this._repo, this._userRepo);

  final IUserDataRepository _repo;
  final IUserRepository _userRepo;

  @override
  Future<DResponse<UserData>> call(UpdateUserParams params) async {
    var userId = params.userId ?? "";

    if (userId.isEmpty) {
      var resp = _userRepo.getCurrentUser();
      if (resp.didFail) {
        return DResponse<UserData>.from(resp.failure);
      }
      userId = resp.data.uid;
    }
    return await _repo.updateUserData(userId, params.updatedUser);
  }
}

class UpdateUserParams {
  final UserData updatedUser;
  final String? userId;

  const UpdateUserParams(this.updatedUser, {this.userId});
}
