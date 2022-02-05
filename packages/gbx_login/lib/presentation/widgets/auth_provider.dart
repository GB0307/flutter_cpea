import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_login/domain/entity/user.dart';
import 'package:gbx_login/presentation/bloc/user_cubit.dart';
import 'package:get/get.dart';

class AuthProvider<U extends GbxUser, UD extends Identifiable>
    extends StatelessWidget {
  const AuthProvider({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!Get.isRegistered<UserCubit<U, UD>>()) {
      Get.put<UserCubit<U, UD>>(UserCubit<U, UD>(), permanent: true);
    }

    return BlocProvider<UserCubit<U, UD>>(
      create: (context) => Get.find<UserCubit<U, UD>>(),
      child: child,
    );
  }
}
