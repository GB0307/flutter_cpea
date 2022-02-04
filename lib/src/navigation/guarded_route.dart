import 'package:cpea/src/features/login/presentation/pages/login_guard_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

typedef GoRouterWidgetBuilder = Widget Function(
  BuildContext context,
  GoRouterState state,
);

class GuardedGoRoute extends GoRoute {
  GuardedGoRoute({
    required String path,
    String? name,
    GoRouterPageBuilder? pageBuilder,
    GoRouterWidgetBuilder builder = _builder,
    List<GoRoute> routes = const [],
    GoRouterRedirect redirect = _redirect,
  }) : super(
          path: path,
          name: name,
          pageBuilder: pageBuilder,
          builder: (ctx, state) => _guardWrapper(ctx, state, builder),
          routes: const [],
          redirect: redirect,
        );

  static Widget _guardWrapper(
      BuildContext ctx, GoRouterState state, GoRouterWidgetBuilder builder) {
    return CPEALoginGuard(
      key: const ValueKey("CPEA_LOGIN_GUARD_NAV"),
      page: builder(ctx, state),
    );
  }

  static String? _redirect(GoRouterState state) => null;

  static Widget _builder(BuildContext context, GoRouterState state) =>
      throw Exception(
        'GoRoute builder parameter not set\n'
        'See gorouter.dev/redirection#considerations for details',
      );
}
