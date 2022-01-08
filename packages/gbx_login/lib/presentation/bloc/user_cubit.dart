import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbx_login/domain/login_module.dart';
import 'package:gbx_login/domain/entity/user.dart';

class UserCubit<T extends GbxUser> extends Cubit<T?> {
  UserCubit()
      : super((LoginModule.instance as LoginModule<dynamic, T>)
            .getCurrentUser()) {
    (LoginModule.instance as LoginModule<dynamic, T>)
        .getUserStream()
        .listen(emit);
  }
}
