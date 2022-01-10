import 'package:cpea/src/features/login/presentation/pages/login_guard_page.dart';
import 'package:cpea/src/features/news/presentation/pages/news_page.dart';
import 'package:go_router/go_router.dart';

abstract class Routes {
  // Set initial page here
  static String get initialRoute => home;

  // Set routes here, change to methods if the route has any parameters
  static String get logIn => "/login";
  static String get home => "/";
  static String get entryHall => "/hall";
  static String get mail => "/mail";
  static String get schedules => "/schedules";

  // List of GoRoutes
  static final routes = <GoRoute>[
    GoRoute(
      path: home,
      builder: (context, state) => const CPEALoginGuard(page: NewsPage()),
    ),
  ];
}
