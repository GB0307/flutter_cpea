import 'package:cpea/src/features/foyer/presentation/pages/permit_list_page.dart';
import 'package:cpea/src/features/home/presentation/pages/home_page.dart';
import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:cpea/src/features/news/presentation/pages/news_list_page.dart';
import 'package:cpea/src/features/news/presentation/pages/news_page.dart';
import 'package:cpea/src/navigation/guarded_route.dart';
import 'package:go_router/go_router.dart';

abstract class Routes {
  // Set initial page here
  static String get initialRoute => home;

  // Set routes here, change to methods if the route has any parameters
  static String get logIn => "/login";
  static String get home => "/";
  static String get newsList => "/news";
  static String news(String id) => "$newsList/$id";
  static String get entryHall => "/hall";
  static String get mail => "/mail";
  static String get schedules => "/schedules";
  static String get permitList => "/permits";

  // List of GoRoutes
  static final routes = <GoRoute>[
    GuardedGoRoute(
      path: home,
      builder: (context, state) => const HomePage(),
    ),
    GuardedGoRoute(
      path: newsList,
      builder: (context, state) => const NewsListPage(),
    ),
    GuardedGoRoute(
      path: news(":id"),
      builder: (context, state) => NewsPage(
        newsId: state.params['id']!,
        news: state.extra as News?,
      ),
    ),
    GuardedGoRoute(
      path: permitList,
      builder: (context, state) => const PermitListPage(),
    ),
  ];
}
