import 'package:firebase_auth/firebase_auth.dart';
import 'package:gbx_core/core/interfaces/index.dart';

class FirebaseAuthFailure extends IFailure {
  FirebaseAuthFailure(this.exception) : super([exception]);
  final FirebaseAuthException exception;
}

class FirebaseFailure extends IFailure {
  FirebaseFailure(this.exception) : super([exception]);
  final FirebaseException exception;
}
