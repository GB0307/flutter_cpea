import 'package:firebase_auth/firebase_auth.dart';
import 'package:gbx_login/domain/entity/user.dart';
import 'package:gbx_login/domain/errors/exceptions.dart';

abstract class IUserDataSource<T extends GbxUser> {
  T getCurrentUser();
  bool isLoggedIn();
}

//class FirebaseUserDataSource extends IUserDataSource<GbxUser> {
//  @override
//  GbxUser getCurrentUser() {
//    var user = FirebaseAuth.instance.currentUser;
//    if (user == null) throw UserNotLoggedInException();
//    return GbxUser(
//      uid: user.uid,
//      emailVerified: user.emailVerified,
//      email: user.email,
//      phoneNumber: user.phoneNumber,
//      displayName: user.displayName,
//    );
//  }
//
//  @override
//  bool isLoggedIn() {
//    try {
//      getCurrentUser();
//      return true;
//    } catch (e) {
//      return false;
//    }
//  }
//}
