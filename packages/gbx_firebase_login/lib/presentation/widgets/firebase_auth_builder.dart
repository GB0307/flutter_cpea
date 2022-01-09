import 'package:gbx_login/gbx_login.dart';

class FirebaseAuthBuilder<T> extends AuthBuilder<GbxUser, T> {
  const FirebaseAuthBuilder(UserWidgetBuilder<GbxUser, UserState<T>> builder)
      : super(builder: builder);
}
