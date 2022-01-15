import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:cpea/src/navigation/redirect_handler.dart';
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
          navigatorBuilder: (context, state, child) =>
              FirebaseAuthProvider<UserData>(
            child: child,
          ),
        );
}
