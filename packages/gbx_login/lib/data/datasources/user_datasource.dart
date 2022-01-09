import 'package:gbx_login/domain/entity/user.dart';

abstract class IUserDataSource<T extends GbxUser> {
  T getCurrentUser();
  bool isLoggedIn();

  Future<void> signOut();

  Stream<T?> getUserStream();
}
