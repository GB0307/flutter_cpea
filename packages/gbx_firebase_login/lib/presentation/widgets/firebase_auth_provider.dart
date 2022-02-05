import 'package:flutter/material.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_login/gbx_login.dart';

class FirebaseAuthProvider<T extends Identifiable>
    extends AuthProvider<GbxUser, T> {
  const FirebaseAuthProvider({Key? key, required Widget child})
      : super(child: child, key: key);
}
