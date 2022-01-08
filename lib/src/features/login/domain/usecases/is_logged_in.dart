import 'package:cpea/src/features/login/domain/repositories/user_repository.dart';
import 'package:cpea/src/features/login/domain/usecases/get_current_user.dart';
import 'package:gbx_core/gbx_core.dart';

class IsLoggedIn extends IResponseUseCase<bool, NoParams> {
  IsLoggedIn(this._repo);

  final IUserRepository _repo;

  @override
  DResponse<bool> call([NoParams params = const NoParams()]) {
    var currentUser = GetCurrentUser(_repo).call();
    return DResponse<bool>.from(currentUser.data != null);
  }
}
