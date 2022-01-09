import 'package:cpea/src/features/home/presentation/pages/home_page.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:cpea/src/features/login/presentation/pages/login_guard_page.dart';
import 'package:flutter/material.dart';
import 'package:gbx_firebase_login/gbx_firebase_login.dart';
import 'package:gbx_login/gbx_login.dart';
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
      path: home,
      builder: (context, state) => const CPEALoginGuard(page: HomePage()),
    ),
  ];
}
