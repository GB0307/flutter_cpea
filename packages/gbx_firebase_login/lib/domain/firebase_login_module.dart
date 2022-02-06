import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/domain/index.dart';
import 'package:gbx_login/gbx_login.dart';
import 'package:get/get.dart';

class FirebaseLoginModule<T extends Identifiable>
    extends LoginModule<T, GbxUser> {
  static FirebaseLoginModule<V> instance<V extends Identifiable>() =>
      Get.find<LoginModule>() as FirebaseLoginModule<V>;

  FirebaseLoginModule(
      IUserRepository<GbxUser> userRepo, ICRUDRepository<T> userDataRepo)
      : super(userRepo, userDataRepo);

  @override
  Future<void> injectSelf() async {
    Get.put<LoginModule>(this, permanent: true);
  }
}
