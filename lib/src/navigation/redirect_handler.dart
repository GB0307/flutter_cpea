import 'package:cpea/src/features/login/login_module.dart';
import 'package:cpea/src/navigation/routes.dart';
import 'package:go_router/go_router.dart';

abstract class RedirectHandler {
  static String? redirect(GoRouterState state) {
    var currentRoute = state.subloc;
    var currentUser = LoginModule.instance.getCurrentUser().data;

    if (currentUser == null && currentRoute != Routes.logIn) {
      return Routes.logIn;
    }
  }
}
