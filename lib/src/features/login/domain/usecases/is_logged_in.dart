import 'package:cpea/src/core/interfaces/response.dart';
import 'package:cpea/src/core/interfaces/use_case.dart';
import 'package:cpea/src/features/login/domain/usecases/get_current_user.dart';

class IsLoggedIn extends IUseCase<bool, NoParams> {
  @override
  Response<bool> call([NoParams params = const NoParams()]) {
    var currentUser = GetCurrentUser().call();
    return Response<bool>.from(currentUser.data != null);
  }
}
