import 'package:firebase_auth/firebase_auth.dart';
import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/repositories/user_repository.dart';

class GetCurrentUser extends IUseCase<User?, NoParams> {
  GetCurrentUser(this._repo);
  final IUserRepository _repo;

  @override
  User? call([NoParams params = const NoParams()]) {
    return _repo.getCurrentUser().data;
  }
}
