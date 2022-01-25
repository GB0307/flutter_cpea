import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbx_login/domain/entity/user.dart';
import 'package:gbx_login/presentation/bloc/user_cubit.dart';
import 'package:gbx_login/presentation/bloc/user_data_cubit.dart';
import 'package:get/get.dart';

class AuthProvider<U extends GbxUser, UD> extends StatelessWidget {
  const AuthProvider({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!Get.isRegistered<UserCubit<U>>()) {
      Get.put(UserCubit<U>(), permanent: true);
    }
    if (!Get.isRegistered<UserDataCubit<UD>>()) {
      Get.put(UserDataCubit<UD>(), permanent: true);
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserCubit<U>>(
          create: (BuildContext context) => Get.find<UserCubit<U>>(),
        ),
        BlocProvider<UserDataCubit<UD>>(
          create: (BuildContext context) => Get.find<UserDataCubit<UD>>(),
        ),
      ],
      child: child,
    );
  }
}
