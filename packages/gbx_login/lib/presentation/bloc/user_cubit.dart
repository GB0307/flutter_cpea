import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_login/domain/entity/user.dart';

import '../../../domain/login_module.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit<U extends GbxUser, UD extends Identifiable>
    extends Cubit<UserState<U, UD>> {
  LoginModule<UD, U> get module => LoginModule.instance as LoginModule<UD, U>;

  UserCubit() : super(const UserState.loggingIn()) {
    module.getUserStream().listen(_streamEvent);
  }

  void _streamEvent(U? newUser) {
    if (newUser == null) emit(const UserState.notLoggedIn());

    state.maybeWhen(
      loggedIn: (user, data) {
        if (data.id != newUser!.uid) _userChanged(newUser);
      },
      orElse: () {
        _userChanged(newUser!);
      },
    );
  }

  Future<void> _userChanged(U user) async {
    emit(const UserState.loggingIn());
    var response = await module.getUserData(user.uid);
    emit(response.didSuccess
        ? UserState.loggedIn(user, response.data)
        : UserState.noData(user));
  }
}
