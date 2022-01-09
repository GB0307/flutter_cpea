import 'package:flutter/material.dart';
import 'package:gbx_login/gbx_login.dart';

class FirebaseAuthBuilder<T> extends AuthBuilder<GbxUser, T> {
  const FirebaseAuthBuilder(
      {Key? key, required UserWidgetBuilder<GbxUser, UserState<T>> builder})
      : super(builder: builder, key: key);
}
