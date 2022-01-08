import 'package:cpea/src/core/interfaces/response.dart';
import 'package:cpea/src/features/login/data/datasources/user_datasource.dart';
import 'package:cpea/src/features/login/domain/errors/exceptions.dart';
import 'package:cpea/src/features/login/domain/errors/failures.dart';
import 'package:cpea/src/features/login/domain/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepository extends IUserRepository {
  UserRepository(this._dataSource);

  final IUserDataSource _dataSource;

  @override
  DResponse<User> getCurrentUser() =>
      runCatching(() => _dataSource.getCurrentUser());

  @override
  DResponse<String> getUserId() => getCurrentUser().map((v) => v.uid);

  @override
  DResponse<bool> isLoggedIn() => runCatching(() => _dataSource.isLoggedIn());

  DResponse<T> runCatching<T>(T Function() callback) {
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
}
