import 'package:flutter/material.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_login/gbx_login.dart';

class FirebaseAuthBuilder<T extends Identifiable>
    extends AuthBuilder<GbxUser, T> {
  const FirebaseAuthBuilder(
      {Key? key, required UserWidgetBuilder<GbxUser, T> builder})
      : super(builder: builder, key: key);
}
