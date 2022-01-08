import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/entity/user.dart';

abstract class IUserRepository<T extends GbxUser> {
  DResponse<T> getCurrentUser();
  DResponse<bool> isLoggedIn();
  DResponse<String> getUserId();
}
