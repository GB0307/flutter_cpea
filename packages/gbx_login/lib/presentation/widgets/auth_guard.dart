import 'package:flutter/cupertino.dart';
import 'package:gbx_login/gbx_login.dart';

class AuthGuard<T> extends StatelessWidget {
  const AuthGuard({
    Key? key,
    this.noDataBuilder,
    this.noUserBuilder,
    this.loadingDataBuilder,
    required this.builder,
  }) : super(key: key);

  final WidgetBuilder? loadingDataBuilder;
  final WidgetBuilder? noDataBuilder;
  final WidgetBuilder? noUserBuilder;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return AuthBuilder<GbxUser, T>(builder: (ctx, user, state) {
      if (user != null &&
          state?.action == UAction.loading &&
          loadingDataBuilder != null) {
        return loadingDataBuilder!(ctx);
      }
      if (user != null && state?.user != null) {
        // Logged in
        return builder(ctx);
      } else if (user != null && state?.user == null) {
        // No Data
        return noDataBuilder?.call(ctx) ?? builder(ctx);
      } else if (user == null) {
        // Not Logged In
        return noDataBuilder?.call(ctx) ?? builder(ctx);
      }
      return build(ctx);
    });
  }
}
