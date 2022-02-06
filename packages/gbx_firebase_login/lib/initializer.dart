import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_firebase_login/domain/firebase_login_module.dart';
import 'package:gbx_login/gbx_login.dart';

import 'data/datasources/firestore_user_datasource.dart';

abstract class GbxFirebaseLogin {
  static Future<void> initializeWith<T extends Identifiable>({
    ICRUDDataSource<T>? userDataDataSource,
    Serializer<T>? serializer,
    Deserializer<T>? deserializer,
  }) async {
    assert(
        userDataDataSource != null ||
            (serializer != null && deserializer != null),
        "You must provide a custom user data datasource or the serializer/deserializer");

    var userRepo = UserRepository<GbxUser>(FirebaseUserDataSource());

    var userDataRepo = UserDataRepository<T>(datasource: userDataDataSource!);

    await FirebaseLoginModule<T>(userRepo, userDataRepo).initialize();
  }
}
