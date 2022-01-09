import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_firebase_login/domain/firebase_login_module.dart';
import 'package:gbx_login/gbx_login.dart';

import 'data/datasources/firestore_user_data_datasource.dart';
import 'data/datasources/firestore_user_datasource.dart';

abstract class GbxFirebaseLogin {
  static Future<void> initializeWith<T>({
    Serializer<T>? serializer,
    Deserializer<T>? deserializer,
    FirestoreUserDataDataSource<T>? userDataDataSource,
    ICachedUserDataDataSource<T>? cachedUserDataDataSource,
  }) async {
    assert(
        userDataDataSource != null ||
            (serializer != null && deserializer != null),
        "You must provide a custom user data datasource or the serializer/deserializer");

    var userRepo = UserRepository<GbxUser>(FirebaseUserDataSource());

    var userDataRepo = UserDataRepository<T>(
      userDataDataSource ??
          FirestoreUserDataDataSource(
              serializer: serializer!, deserializer: deserializer!),
      cachedUserDataDataSource ??
          const GetxCachedUserDataDataSource(tag: "cached_user_data"),
    );

    await FirebaseLoginModule<T>(userRepo, userDataRepo).initialize();
  }
}
