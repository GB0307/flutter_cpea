import 'package:dartz/dartz.dart';
import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/repositories/user_repository.dart';

class GetUserData<T extends Identifiable> extends IAsyncUseCase<T, String?> {
  GetUserData(this._repo, this._userRepo);

  final ICRUDRepository<T> _repo;
  final IUserRepository _userRepo;

  @override
  // ignore: avoid_renaming_method_parameters
  Future<DResponse<T>> call([String? userId]) async {
    var uid = userId ?? "";

    if (userId == null) {
      var resp = _userRepo.getUserId();
      if (resp.didFail) {
        return DResponse(Left<IFailure, T>(resp.failure));
      }
      uid = resp.data;
    }

    return await _repo.read(uid);
  }
}
