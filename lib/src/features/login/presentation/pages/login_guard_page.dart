import 'package:cpea/src/core/utils/env_variables.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:gbx_firebase_login/gbx_firebase_login.dart';
import 'package:gbx_login/gbx_login.dart';

class CPEALoginGuard extends StatelessWidget {
  const CPEALoginGuard({Key? key, required this.page})
      : builder = null,
        super(key: key);

  const CPEALoginGuard.builder({Key? key, required this.builder})
      : page = null,
        super(key: key);

  final Widget? page;
  final UserWidgetBuilder<GbxUser, UserData?>? builder;

  static List<ProviderConfiguration> get providers => [
        const EmailProviderConfiguration(),
        GoogleProviderConfiguration(clientId: EnvVariables.googleClientId),
      ];

  @override
  Widget build(BuildContext context) {
    return AuthGuard<UserData>(
      builder: (context, user, userData) =>
          page ?? builder?.call(context, user, userData?.user) ?? Container(),
      noDataBuilder: (context, user, userData) => noDataWidget(),
      loadingDataBuilder: (context, user, userData) => loadingDataWidget(),
      noUserBuilder: (context, user, userData) => LoginPage(
        providers: providers,
        headerBuilder: (ctx, constraints, shrinkOffset) =>
            Image.asset("assets/images/logo.png"),
      ),
    );
  }

  Widget noDataWidget() {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text("NO DATA FOUND"),
            ),
          ),
          SafeArea(
              child: TextButton(
            child: const Text("Log Out"),
            onPressed: () => FirebaseLoginModule.instance().signOut(),
          ))
        ],
      ),
    );
  }

  Widget loadingDataWidget() {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
