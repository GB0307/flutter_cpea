import 'package:cpea/src/features/login/presentation/widgets/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:get/get.dart';

class LoginPage extends ILoginPage {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("CTX ${Get.context}");
    return SignInScreen(
      headerBuilder: (context, constraints, shrinkOffset) =>
          Image.asset("assets/images/logo.png"),
      providerConfigs: providers,
      actions: actions,
    );
  }
}
