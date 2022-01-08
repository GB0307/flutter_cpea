import 'package:cpea/src/features/login/domain/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gbx_core/gbx_core.dart';

class GetCurrentUser extends IResponseUseCase<User?, NoParams> {
  GetCurrentUser(this._repo);
  final IUserRepository _repo;

  @override
  DResponse<User?> call([NoParams params = const NoParams()]) {
    return _repo.getCurrentUser();
  }
}
