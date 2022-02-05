import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_login/domain/entity/user.dart';
import 'package:gbx_login/presentation/bloc/user_cubit.dart';

typedef UserWidgetBuilder<U, UD> = Widget Function(
    BuildContext ctx, UserState<U, UD> state);

class AuthBuilder<U extends GbxUser, UD extends Identifiable>
    extends StatelessWidget {
  const AuthBuilder({Key? key, required this.builder}) : super(key: key);

  final UserWidgetBuilder<U, UD> builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit<U, UD>, UserState<U, UD>>(
      builder: (context, state) => builder.call(context, state),
    );
  }
}
