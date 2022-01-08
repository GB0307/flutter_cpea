import 'package:cpea/src/core/interfaces/response.dart';
import 'package:cpea/src/core/interfaces/use_case.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:cpea/src/features/login/domain/repositories/user_data_repository.dart';
import 'package:cpea/src/features/login/domain/repositories/user_repository.dart';

class GetUserData extends IAsyncUseCase<UserData, String?> {
  GetUserData(this._repo, this._userRepo);

  final IUserDataRepository _repo;
  final IUserRepository _userRepo;

  @override
  // ignore: avoid_renaming_method_parameters
  Future<DResponse<UserData>> call([String? userId]) async {
    var uid = userId ?? "";

    if (uid.isEmpty) {
      var resp = _userRepo.getUserId();
      var failedResp = resp.on(
        success: (data) => uid = data,
        failure: (failure) => DResponse<UserData>.from(failure),
      );
      if (failedResp != null) {
        return failedResp;
      }
    }

    return await _repo.getUserData(uid);
  }
}
