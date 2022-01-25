import 'package:flutter/material.dart';
import 'package:gbx_login/gbx_login.dart';

class FirebaseAuthProvider<T> extends AuthProvider<GbxUser, T> {
  const FirebaseAuthProvider({Key? key, required Widget child})
      : super(child: child, key: key);
}
