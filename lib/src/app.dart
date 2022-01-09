import 'package:cpea/src/core/theme/theme.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({Key? key, required GoRouter router})
      : _router = router,
        super(key: key);

  final GoRouter _router;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      builder: (context, child) {
        Get.addKey(_router.routerDelegate.navigatorKey);
        return child!;
      },
      localizationsDelegates: const [
        L18n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L18n.locales,
      onGenerateTitle: (BuildContext context) => L18n.of(context).appTitle,
      theme: theme,
      darkTheme: ThemeData.dark(),
    );
  }
}
