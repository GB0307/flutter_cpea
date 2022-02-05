part of 'user_cubit.dart';

@freezed
class UserState<U, UD> with _$UserState<U, UD> {
  const factory UserState.notLoggedIn() = _NotLoggedIn;
  const factory UserState.loggingIn() = _LoggingIn;
  factory UserState.noData(U user) = _NoData<U, UD>;
  factory UserState.loggedIn(U user, UD data) = _LoggedIn<U, UD>;
}
