import 'package:gbx_core/gbx_core.dart';

abstract class IUserDataRepository<T> {
  const IUserDataRepository();

  Future<DResponse<T>> getUserData(String uid);
  DResponse<T> getCachedUserData();
  Future<DResponse<T>> updateUserData(String userId, T updatedUser);
}
