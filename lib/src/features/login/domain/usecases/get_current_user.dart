import 'package:cpea/src/core/interfaces/response.dart';
import 'package:cpea/src/core/interfaces/use_case.dart';
import 'package:cpea/src/features/login/domain/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetCurrentUser extends IUseCase<User?, NoParams> {
  GetCurrentUser(this._repo);
  final IUserRepository _repo;

  @override
  DResponse<User?> call([NoParams params = const NoParams()]) {
    return _repo.getCurrentUser();
  }
}
