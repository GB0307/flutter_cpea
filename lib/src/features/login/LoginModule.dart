import 'package:cpea/src/core/interfaces/module.dart';
import 'package:cpea/src/core/utils/env_variables.dart';
import 'package:cpea/src/features/login/domain/repositories/user_data_repository.dart';
import 'package:cpea/src/features/login/domain/repositories/user_repository.dart';
import 'package:cpea/src/features/login/domain/usecases/get_cached_user_data.dart';
import 'package:cpea/src/features/login/domain/usecases/get_current_user.dart';
import 'package:cpea/src/features/login/domain/usecases/is_logged_in.dart';
import 'package:cpea/src/features/login/domain/usecases/update_user_data.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:get/get.dart';

import 'domain/usecases/get_user_data.dart';

// TODO: CHECK POSSIBILITY OF REPLACING MODULE BY CUBITS

class LoginModule extends IModule {
  static LoginModule get instance => Get.find<LoginModule>();

  LoginModule(this._userRepo, this._userDataRepo);

  static final List<ProviderConfiguration> loginProviders = [
    const EmailProviderConfiguration(),
    GoogleProviderConfiguration(
      clientId: EnvVariables.GOOGLE_CLIENT_ID,
    ),
  ];

  final IUserRepository _userRepo;
  final IUserDataRepository _userDataRepo;

  late final IsLoggedIn isLoggedIn;
  late final GetCurrentUser getCurrentUser;
  late final GetCachedUserData getCachedUserData;
  late final UpdateUserData updateUserData;
  late final GetUserData getUserData;

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
