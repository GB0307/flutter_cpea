import 'package:firebase_auth/firebase_auth.dart';
import 'package:gbx_login/gbx_login.dart';

class FirebaseUserDataSource extends IUserDataSource<GbxUser> {
  @override
  GbxUser getCurrentUser() {
    var user = FirebaseAuth.instance.currentUser;
    if (user == null) throw UserNotLoggedInException();
    return _userToGbxUser(user);
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

  GbxUser _userToGbxUser(User user) {
    return GbxUser(
      uid: user.uid,
      emailVerified: user.emailVerified,
      email: user.email,
      phoneNumber: user.phoneNumber,
      displayName: user.displayName,
      photoUrl: user.photoURL,
    );
  }

  @override
  Stream<GbxUser?> getUserStream() {
    return FirebaseAuth.instance
        .userChanges()
        .map((event) => event != null ? _userToGbxUser(event) : null);
  }

  @override
  Future<void> signOut() async => await FirebaseAuth.instance.signOut();
}
