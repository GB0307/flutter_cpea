import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/entity/user.dart';
import 'package:gbx_login/domain/repositories/user_repository.dart';

import 'get_current_user.dart';

class GetUserStream<T extends GbxUser> extends IUseCase<Stream<T>, NoParams> {
  GetUserStream(this._repo);

  final IUserRepository<T> _repo;

  @override
  Stream<T> call([NoParams params = const NoParams()]) {
    return _repo.getUserStream();
  }
}
