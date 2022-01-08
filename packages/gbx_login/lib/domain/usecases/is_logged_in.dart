import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/repositories/user_repository.dart';

import 'get_current_user.dart';

class IsLoggedIn extends IUseCase<bool, NoParams> {
  IsLoggedIn(this._repo);

  final IUserRepository _repo;

  @override
  bool call([NoParams params = const NoParams()]) {
    var currentUser = GetCurrentUser(_repo).call();
    return currentUser != null;
  }
}
