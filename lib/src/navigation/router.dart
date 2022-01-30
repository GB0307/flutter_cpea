import 'package:cpea/src/core/widgets/utils/no_splash_configuration.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:cpea/src/features/login/presentation/pages/login_guard_page.dart';
import 'package:cpea/src/navigation/redirect_handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:gbx_firebase_login/presentation/widgets/firebase_auth_provider.dart';

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
          navigatorBuilder: (context, state, child) => NoSplashConfiguration(
            key: const ValueKey("NO_SPLASH_CONFIG"),
            child: FirebaseAuthProvider<UserData>(
              key: const ValueKey("FIREBASE_AUTH_PROVIDER_USER_DATA"),
              child: state.path == Routes.logIn
                  ? child
                  : CPEALoginGuard(
                      key: const ValueKey("CPEA_LOGIN_GUARD_NAV"),
                      page: child,
                    ),
            ),
          ),
        );
}
