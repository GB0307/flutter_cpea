import 'package:cpea/src/core/utils/env_variables.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
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
  final Widget Function(BuildContext context, GbxUser user, UserData data)?
      builder;

  static List<ProviderConfiguration> get providers => [
        const EmailProviderConfiguration(),
        GoogleProviderConfiguration(clientId: EnvVariables.googleClientId),
      ];

  @override
  Widget build(BuildContext context) {
    return FirebaseAuthBuilder<UserData>(
      builder: (ctx, state) => state.when<Widget>(
        notLoggedIn: () => LoginPage(
          providers: providers,
          headerBuilder: (ctx, constraints, shrinkOffset) =>
              Image.asset("assets/images/logo.png"),
        ),
        loggingIn: () => loadingDataWidget(),
        noData: (user) => noDataWidget(),
        loggedIn: (user, data) =>
            page ?? builder?.call(context, user, data) ?? Container(),
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
