import 'package:cpea/src/core/interfaces/response.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IUserRepository {
  DResponse<User> getCurrentUser();
  DResponse<bool> isLoggedIn();
  DResponse<String> getUserId();
}
