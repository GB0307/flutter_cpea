import 'package:cpea/src/features/login/data/datasources/cached_user_data_datasource.dart';
import 'package:cpea/src/features/login/data/datasources/user_data_datasource.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:cpea/src/features/login/domain/errors/exceptions.dart';
import 'package:cpea/src/features/login/domain/errors/failures.dart';
import 'package:cpea/src/features/login/domain/repositories/user_data_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_firebase/gbx_firebase.dart';

class UserDataRepository extends IUserDataRepository {
  const UserDataRepository(this._dataSource, this._cachedDataSource);

  final IUserDataDataSource _dataSource;
  final ICachedUserDataDataSource _cachedDataSource;

  @override
  DResponse<UserData> getCachedUserData() {
    return runCatching<UserData>(() => _cachedDataSource.getCachedUserData());
  }

  @override
  Future<DResponse<UserData>> getUserData(String uid) {
    return runCatchingAsync(() => _dataSource.getUserData(uid));
  }

  @override
  Future<DResponse<UserData>> updateUserData(
    String userId,
    UserData updatedUser,
  ) {
    return runCatchingAsync(
        () => _dataSource.updateUserData(userId, updatedUser));
  }

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

  Future<DResponse<T>> runCatchingAsync<T>(
      Future<T> Function() callback) async {
    dynamic result;
    try {
      result = await callback();
    } on UserNotLoggedInException {
      result = UserNotLoggedInFailure();
    } on UserDataNotFoundException {
      result = UserDataNotFoundFailure();
    } on FirebaseAuthException catch (e) {
      result = FirebaseAuthFailure(e);
    } on FirebaseException catch (e) {
      result = FirebaseFailure(e);
    }

    return DResponse.from(result);
  }
}
