import 'package:gbx_login/domain/entity/user.dart';

abstract class IUserDataSource<T extends GbxUser> {
  T getCurrentUser();
  bool isLoggedIn();

  Stream<T> getUserStream();
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
