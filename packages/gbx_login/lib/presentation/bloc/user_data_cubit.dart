import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbx_login/domain/login_module.dart';
import 'package:gbx_login/domain/entity/user.dart';
import 'package:gbx_login/domain/usecases/update_user_data.dart';

class UserDataCubit<T> extends Cubit<UserState<T>> {
  UserDataCubit([this.tag]) : super(const UserState(null)) {
    getUserData();
  }

  LoginModule get _module => (LoginModule.instance as LoginModule<T, GbxUser>);

  final String? tag;

  void getUserData() async {
    emit(UserState<T>(null, UAction.loading));
    var data = await _module.getUserData();
    emit(
      UserState<T>(
        data.didSuccess ? data.data : null,
        data.didSuccess ? UAction.complete : UAction.failed,
      ),
    );
  }

  void updateUserData(T updatedData) async {
    emit(UserState<T>(state.user, UAction.loading));
    var data = await _module.updateUserData(UpdateUserParams<T>(updatedData));
    var action = data.didSuccess ? UAction.complete : UAction.failed;
    emit(UserState<T>(data.data ?? state.user, action));
  }
}

class UserState<U> extends Equatable {
  final UAction action;
  final U? user;

  const UserState([this.user, this.action = UAction.complete]);

  @override
  List<Object?> get props => [action, user];
}

enum UAction { complete, loading, updating, failed }
