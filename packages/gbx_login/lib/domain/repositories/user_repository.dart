import 'package:firebase_auth/firebase_auth.dart';
import 'package:gbx_core/gbx_core.dart';

abstract class IUserRepository {
  DResponse<User> getCurrentUser();
  DResponse<bool> isLoggedIn();
  DResponse<String> getUserId();
}
