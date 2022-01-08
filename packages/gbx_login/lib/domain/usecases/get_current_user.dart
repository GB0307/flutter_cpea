import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/entity/user.dart';
import 'package:gbx_login/domain/repositories/user_repository.dart';

class GetCurrentUser<T extends GbxUser> extends IUseCase<T?, NoParams> {
  GetCurrentUser(this._repo);

  final IUserRepository<T> _repo;

  @override
  T? call([NoParams params = const NoParams()]) {
    return _repo.getCurrentUser().data;
  }
}
