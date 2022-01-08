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
