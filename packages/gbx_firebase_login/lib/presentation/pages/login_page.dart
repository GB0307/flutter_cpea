import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

typedef Builder = Widget Function(
    BuildContext ctx, BoxConstraints constraints, double shrinkOffset);

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
    this.providers = const [],
    this.headerBuilder,
  }) : super(key: key);

  final List<ProviderConfiguration> providers;
  final Builder? headerBuilder;

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      headerBuilder: headerBuilder,
      providerConfigs: providers,
    );
  }
}
