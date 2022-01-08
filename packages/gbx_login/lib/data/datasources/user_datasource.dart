import 'package:gbx_login/domain/entity/user.dart';

abstract class IUserDataSource<T extends GbxUser> {
  T getCurrentUser();
  bool isLoggedIn();

  Stream<T?> getUserStream();
}
