import 'package:cpea/src/navigation/redirect_handler.dart';

import './routes.dart';
import 'package:go_router/go_router.dart';

class AppRouter extends GoRouter {
  AppRouter()
      : super(
          routes: Routes.routes,
          restorationScopeId: 'app',
          urlPathStrategy: UrlPathStrategy.path,
          initialLocation: Routes.initialRoute,
          redirect: (state) => RedirectHandler.redirect(state),
        );
}
