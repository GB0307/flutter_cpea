import 'package:cpea/src/features/login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class Routes {
  // Set initial page here
  static String get initialRoute => home;

  // Set routes here, change to methods if the route has any parameters
  static String get logIn => "/login";
  static String get home => "/";

  // List of GoRoutes
  static final routes = <GoRoute>[
    GoRoute(
      path: logIn,
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: home,
      builder: (context, state) => const Scaffold(
        body: Center(
          child: Text("HOME"),
        ),
      ),
    ),
  ];
}
