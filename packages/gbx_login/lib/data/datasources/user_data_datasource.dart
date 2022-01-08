import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_login/domain/errors/exceptions.dart';

abstract class IUserDataDataSource<T> {
  const IUserDataDataSource();

  /// Gets the current user data from the database
  ///
  /// throws NoUserDataException if there is no data available
  /// throws UserNotLoggedInException if the user is not logged in
  Future<T> getUserData(String uid);

  /// Updates the current user data from the database
  ///
  /// throws UserNotLoggedInException if the user is not logged in
  Future<T> updateUserData(String userId, T updatedUser);
}

// TODO: MOVE THIS TO THE GBX_FIREBASE_LOGIN PACKAGE
class FirestoreUserDataDataSource<T> extends IUserDataDataSource<T> {
  const FirestoreUserDataDataSource({
    this.collection = "users",
    required this.serializer,
    required this.deserializer,
  });

  final String collection;
  final Serializer<T> serializer;
  final Deserializer<T> deserializer;

  CollectionReference<Map<String, dynamic>> get col =>
      FirebaseFirestore.instance.collection(collection);

  @override
  Future<T> getUserData(String uid) async {
    var data = await col.doc(uid).get();

    if (!data.exists) throw UserDataNotFoundException();

    return deserializer(data.data()!);
  }

  @override
  Future<T> updateUserData(String userId, T updatedUser) async {
    await col.doc(userId).update(serializer(updatedUser));
    return updatedUser;
  }
}
