import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/data/datasources/user_datasource.dart';
import 'package:gbx_login/domain/entity/user.dart';
import 'package:gbx_login/domain/errors/exceptions.dart';
import 'package:gbx_login/domain/errors/failures.dart';
import 'package:gbx_login/domain/repositories/user_repository.dart';

class UserRepository<T extends GbxUser> extends IUserRepository {
  UserRepository(this._dataSource);

  final IUserDataSource<T> _dataSource;

  @override
  DResponse<T> getCurrentUser() =>
      runCatching(() => _dataSource.getCurrentUser());

  @override
  DResponse<String> getUserId() => getCurrentUser().map((v) => v.uid);

  @override
  DResponse<bool> isLoggedIn() => runCatching(() => _dataSource.isLoggedIn());

  @override
  Stream<GbxUser?> getUserStream() {
    return _dataSource.getUserStream();
  }

  DResponse<V> runCatching<V>(V Function() callback) {
    dynamic result;
    try {
      result = callback();
    } on UserNotLoggedInException {
      result = UserNotLoggedInFailure();
    } on UserDataNotFoundException {
      result = UserDataNotFoundFailure();
    }

    return DResponse.from(result);
  }

  @override
  Future<void> signOut() => _dataSource.signOut();
}
