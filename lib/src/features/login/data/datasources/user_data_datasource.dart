import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:cpea/src/features/login/domain/errors/exceptions.dart';

abstract class IUserDataDataSource {
  const IUserDataDataSource();

  /// Gets the current user data from the database
  ///
  /// throws NoUserDataException if there is no data available
  /// throws UserNotLoggedInException if the user is not logged in
  Future<UserData> getUserData(String uid);

  /// Updates the current user data from the database
  ///
  /// throws UserNotLoggedInException if the user is not logged in
  Future<UserData> updateUserData(String userId, UserData updatedUser);
}

class UserDataDataSource extends IUserDataDataSource {
  const UserDataDataSource();

  CollectionReference<Map<String, dynamic>> get col =>
      FirebaseFirestore.instance.collection("users");

  @override
  Future<UserData> getUserData(String uid) async {
    var data = await col.doc(uid).get();

    if (!data.exists) throw UserDataNotFoundException();

    return UserData.fromJson(data.data()!);
  }

  @override
  Future<UserData> updateUserData(String userId, UserData updatedUser) async {
    await col.doc(userId).update(updatedUser.toJson());
    return updatedUser;
  }
}
