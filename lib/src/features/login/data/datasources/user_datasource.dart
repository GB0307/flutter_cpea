import 'package:cpea/src/features/login/domain/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IUserDataSource {
  User getCurrentUser();
  bool isLoggedIn();
}

class UserDataSource extends IUserDataSource {
  @override
  User getCurrentUser() {
    var user = FirebaseAuth.instance.currentUser;
    if (user == null) throw UserNotLoggedInException();
    return user;
  }

  @override
  bool isLoggedIn() {
    try {
      getCurrentUser();
      return true;
    } catch (e) {
      return false;
    }
  }
}
