import 'package:cpea/src/features/login/presentation/widgets/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class LoginPage extends ILoginPage {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      providerConfigs: providers,
      actions: actions,
    );
  }
}
