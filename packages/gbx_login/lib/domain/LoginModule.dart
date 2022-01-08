import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/repositories/user_data_repository.dart';
import 'package:gbx_login/domain/repositories/user_repository.dart';
import 'package:gbx_login/domain/usecases/get_current_user.dart';
import 'package:gbx_login/domain/usecases/is_logged_in.dart';
import 'package:gbx_login/domain/usecases/update_user_data.dart';
import 'package:get/get.dart';

import 'usecases/get_cached_user_data.dart';
import 'usecases/get_user_data.dart';

// TODO: CHECK POSSIBILITY OF REPLACING MODULE BY CUBITS

class LoginModule<T> extends IModule {
  static LoginModule get instance => Get.find<LoginModule>();

  LoginModule(this._userRepo, this._userDataRepo);

  final IUserRepository _userRepo;
  final IUserDataRepository<T> _userDataRepo;

  late final IsLoggedIn isLoggedIn;
  late final GetCurrentUser getCurrentUser;
  late final GetCachedUserData<T> getCachedUserData;
  late final UpdateUserData<T> updateUserData;
  late final GetUserData<T> getUserData;

  @override
  Future<void> initialize() async {
    isLoggedIn = IsLoggedIn(_userRepo);
    getCurrentUser = GetCurrentUser(_userRepo);
    getCachedUserData = GetCachedUserData(_userDataRepo);
    updateUserData = UpdateUserData(_userDataRepo, _userRepo);
    getUserData = GetUserData(_userDataRepo, _userRepo);

    Get.put<LoginModule>(this, permanent: true);
  }
}
