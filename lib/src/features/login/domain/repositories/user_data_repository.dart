import 'package:cpea/src/core/interfaces/response.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';

abstract class IUserDataRepository {
  const IUserDataRepository();

  Future<DResponse<UserData>> getUserData();
  DResponse<UserData> getCachedUserData();
  Future<DResponse<UserData>> updateUserData(UserData updatedUser,
      [String? userId]);
}