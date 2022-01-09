import 'package:gbx_login/gbx_login.dart';
import 'package:get/get.dart';

class FirebaseLoginModule<T> extends LoginModule<T, GbxUser> {
  static FirebaseLoginModule<V> instance<V>() =>
      Get.find<LoginModule>() as FirebaseLoginModule<V>;

  FirebaseLoginModule(
      IUserRepository<GbxUser> userRepo, IUserDataRepository<T> userDataRepo)
      : super(userRepo, userDataRepo);

  @override
  void injectSelf() {
    Get.put<LoginModule>(this, permanent: true);
  }
}
