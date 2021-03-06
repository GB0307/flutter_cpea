import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/entity/user.dart';
import 'package:gbx_login/domain/repositories/user_repository.dart';
import 'package:gbx_login/domain/usecases/get_current_user.dart';
import 'package:gbx_login/domain/usecases/get_user_stream.dart';
import 'package:gbx_login/domain/usecases/is_logged_in.dart';
import 'package:gbx_login/domain/usecases/sign_out.dart';
import 'package:gbx_login/domain/usecases/update_user_data.dart';
import 'package:get/get.dart';

import 'usecases/get_user_data.dart';

class LoginModule<UD extends Identifiable, U extends GbxUser> extends IModule {
  static LoginModule get instance => Get.find<LoginModule>();

  LoginModule(this._userRepo, this._userDataRepo);

  final IUserRepository<U> _userRepo;
  final ICRUDRepository<UD> _userDataRepo;

  late final IsLoggedIn isLoggedIn;
  late final GetCurrentUser<U> getCurrentUser;
  late final UpdateUserData<UD> updateUserData;
  late final GetUserData<UD> getUserData;
  late final GetUserStream<U> getUserStream;
  late final SignOut signOut;

  @override
  Future<void> initializeDependencies() async {
    isLoggedIn = IsLoggedIn(_userRepo);
    getCurrentUser = GetCurrentUser(_userRepo);
    updateUserData = UpdateUserData(_userDataRepo, _userRepo);
    getUserData = GetUserData(_userDataRepo, _userRepo);
    getUserStream = GetUserStream(_userRepo);
    signOut = SignOut(_userRepo);
  }

  @override
  Future<void> injectSelf() async {
    Get.put<LoginModule>(this, permanent: true);
  }
}
