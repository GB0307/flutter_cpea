import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/repositories/user_repository.dart';

class SignOut extends IUseCase<Future<void>, NoParams> {
  SignOut(this._repo);

  final IUserRepository _repo;

  @override
  Future<void> call([NoParams params = const NoParams()]) => _repo.signOut();
}
