import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_firebase/gbx_firebase.dart';
import 'package:gbx_firebase_login/gbx_firebase_login.dart';
import 'package:gbx_login/gbx_login.dart';

import 'entities/user_data.dart';

class CPEALoginModule extends FirebaseLoginModule<UserData> {
  CPEALoginModule()
      : super(
          UserRepository(FirebaseUserDataSource()),
          UserDataRepository(
            datasource: CacheableCRUDDataSource(
              cacheStrategy: CacheStrategy.cacheFirst(),
              datasource: const FirestoreCRUDDataSource(
                  collection: 'users',
                  serializer: userToJson,
                  deserializer: userFromJson),
              cacheDatasource: const GetCacheDataSource<UserData>(
                  boxName: 'users',
                  serializer: userToJson,
                  deserializer: userFromJson),
            ),
          ),
        );

  static UserData userFromJson(Map<String, dynamic> json) =>
      UserData.fromJson(json);
  static Map<String, dynamic> userToJson(UserData data) => data.toJson();
}
