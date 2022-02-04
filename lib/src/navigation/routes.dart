import 'package:cpea/src/features/home/presentation/pages/home_page.dart';
import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:cpea/src/features/news/presentation/pages/news_list_page.dart';
import 'package:cpea/src/features/news/presentation/pages/news_page.dart';
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

  // List of GoRoutes
  static final routes = <GoRoute>[
    GoRoute(
      path: home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: newsList,
      builder: (context, state) => const NewsListPage(),
    ),
    GoRoute(
      path: news(":id"),
      builder: (context, state) => NewsPage(
        newsId: state.params['id']!,
        news: state.extra as News?,
      ),
    ),
  ];
}
