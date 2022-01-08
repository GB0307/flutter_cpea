import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:gbx_core/gbx_core.dart';

abstract class IUserDataRepository {
  const IUserDataRepository();

  Future<DResponse<UserData>> getUserData(String uid);
  DResponse<UserData> getCachedUserData();
  Future<DResponse<UserData>> updateUserData(
      String userId, UserData updatedUser);
}
