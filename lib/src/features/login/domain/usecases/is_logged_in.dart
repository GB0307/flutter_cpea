import 'package:cpea/src/core/interfaces/response.dart';
import 'package:cpea/src/core/interfaces/use_case.dart';
import 'package:cpea/src/features/login/domain/repositories/user_repository.dart';
import 'package:cpea/src/features/login/domain/usecases/get_current_user.dart';

class IsLoggedIn extends IUseCase<bool, NoParams> {
  IsLoggedIn(this._repo);

  final IUserRepository _repo;

  @override
  DResponse<bool> call([NoParams params = const NoParams()]) {
    var currentUser = GetCurrentUser(_repo).call();
    return DResponse<bool>.from(currentUser.data != null);
  }
}
