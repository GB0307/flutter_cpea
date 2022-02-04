import 'package:go_router/go_router.dart';

abstract class RedirectHandler {
  static String? redirect(GoRouterState state) {
    return null;
  }
}
