import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbx_login/domain/entity/user.dart';
import 'package:gbx_login/presentation/bloc/user_cubit.dart';
import 'package:gbx_login/presentation/bloc/user_data_cubit.dart';

typedef UserWidgetBuilder<U, UD> = Widget Function(
    BuildContext ctx, U? user, UD? data);

class AuthConsumer<U extends GbxUser, UD> extends StatelessWidget {
  const AuthConsumer({Key? key, required this.builder}) : super(key: key);

  final UserWidgetBuilder<U, UserState<UD>> builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit<U>, U?>(
      builder: (context, user) =>
          BlocBuilder<UserDataCubit<UD>, UserState<UD>?>(
              builder: (context, userData) {
        return builder.call(context, user, userData);
      }),
    );
  }
}
