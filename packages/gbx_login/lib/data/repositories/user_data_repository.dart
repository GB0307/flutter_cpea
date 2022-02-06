import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/data/datasources/cached_user_data_datasource.dart';
import 'package:gbx_login/data/datasources/user_data_datasource.dart';
import 'package:gbx_login/domain/errors/exceptions.dart';
import 'package:gbx_login/domain/errors/failures.dart';
import 'package:gbx_login/domain/repositories/user_data_repository.dart';

class UserDataRepository<T> extends IUserDataRepository<T> {
  const UserDataRepository(this._dataSource, this._cachedDataSource);

  final IUserDataDataSource<T> _dataSource;
  final ICachedUserDataDataSource<T> _cachedDataSource;

  @override
  DResponse<T> getCachedUserData() {
    return runCatching<T>(() => _cachedDataSource.getCachedUserData());
  }

  @override
  Future<DResponse<T>> getUserData(String uid) {
    return runCatchingAsync(() => _dataSource.getUserData(uid));
  }

  @override
  Future<DResponse<T>> updateUserData(
    String userId,
    T updatedUser,
  ) {
    return runCatchingAsync(
        () => _dataSource.updateUserData(userId, updatedUser));
  }

  DResponse<V> runCatching<V>(V Function() callback) {
    dynamic result;
    try {
      result = callback();
    } on UserNotLoggedInException {
      result = UserNotLoggedInFailure();
    } on UserDataNotFoundException {
      result = UserDataNotFoundFailure();
    } on NoCachedDataException {
      result = NoCachedDataFailure();
    } on Exception catch (e) {
      result = GeneralFailure(e);
    }

    return DResponse.from(result);
  }

  Future<DResponse<V>> runCatchingAsync<V>(
      Future<V> Function() callback) async {
    dynamic result;
    try {
      result = await callback();
    } on UserNotLoggedInException {
      result = UserNotLoggedInFailure();
    } on UserDataNotFoundException {
      result = UserDataNotFoundFailure();
    } on NoCachedDataException {
      result = NoCachedDataFailure();
    } on Exception catch (e) {
      result = GeneralFailure(e);
    }

    return DResponse.from(result);
  }
}
