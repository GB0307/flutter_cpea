import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:cpea/src/features/login/domain/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IUserDataDataSource {
  /// Gets the current user data from the database
  ///
  /// throws NoUserDataException if there is no data available
  /// throws UserNotLoggedInException if the user is not logged in
  Future<UserData> getUserData();

  /// Updates the current user data from the database
  ///
  /// throws UserNotLoggedInException if the user is not logged in
  Future<UserData> updateUserData(UserData updatedUser, [String? userId]);
}

class UserDataDataSource extends IUserDataDataSource {
  CollectionReference<Map<String, dynamic>> get col =>
      FirebaseFirestore.instance.collection("users");

  @override
  Future<UserData> getUserData() async {
    var userId = FirebaseAuth.instance.currentUser?.uid;
    if (userId == null) throw UserNotLoggedInException();
    var data = await col.doc(userId).get();

    if (!data.exists) throw UserDataNotFoundException();

    return UserData.fromJson(data.data()!);
  }

  @override
  Future<UserData> updateUserData(UserData updatedUser,
      [String? userId]) async {
    var uid = userId ?? FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) throw UserNotLoggedInException();

    await col.doc(uid).update(updatedUser.toJson());
    return updatedUser;
  }
}
