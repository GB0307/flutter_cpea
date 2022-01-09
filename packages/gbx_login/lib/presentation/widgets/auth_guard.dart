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

  final UserWidgetBuilder<GbxUser, UserState<T>?>? loadingDataBuilder;
  final UserWidgetBuilder<GbxUser, UserState<T>?>? noDataBuilder;
  final UserWidgetBuilder<GbxUser, UserState<T>?>? noUserBuilder;
  final UserWidgetBuilder<GbxUser, UserState<T>?> builder;

  @override
  Widget build(BuildContext context) {
    return AuthBuilder<GbxUser, T>(builder: (ctx, user, state) {
      if (user == null) {
        return noUserBuilder?.call(ctx, user, state) ??
            builder(ctx, user, state);
      }
      if (state?.action == UAction.loading) {
        return loadingDataBuilder?.call(ctx, user, state) ??
            builder(ctx, user, state);
      }
      if (state?.user == null) {
        return noDataBuilder?.call(ctx, user, state) ??
            builder(ctx, user, state);
      }

      return builder(ctx, user, state);
    });
  }
}
