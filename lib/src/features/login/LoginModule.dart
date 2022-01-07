import 'package:cpea/src/core/interfaces/module.dart';
import 'package:cpea/src/core/utils/env_variables.dart';
import 'package:cpea/src/features/login/domain/usecases/get_current_user.dart';
import 'package:cpea/src/features/login/domain/usecases/is_logged_in.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:get/get.dart';

class LoginModule extends IModule {
  static LoginModule get instance => Get.find<LoginModule>();

  final List<ProviderConfiguration> loginProviders = [
    const EmailProviderConfiguration(),
    GoogleProviderConfiguration(
      clientId: EnvVariables.GOOGLE_CLIENT_ID,
    ),
  ];

  IsLoggedIn isLoggedIn = IsLoggedIn();
  GetCurrentUser getCurrentUser = GetCurrentUser();

  @override
  Future<void> initialize() async {
    Get.put<LoginModule>(this, permanent: true);
  }
}
