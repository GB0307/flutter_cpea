import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:get/get.dart';

abstract class ICachedUserDataDataSource {
  const ICachedUserDataDataSource();

  /// Gets the current user data from cache
  ///
  /// Throws UserNotLoggedInException if the user is not logged in
  /// Throws NoUserDataFoundException if no data is found
  UserData getCachedUserData();

  /// Caches the most recent user data
  Future<void> cacheUserData(UserData data);
}

class CachedUserDataDataSource extends ICachedUserDataDataSource {
  const CachedUserDataDataSource({this.tag});

  final String? tag;
  @override
  Future<void> cacheUserData(UserData data) async {
    Get.put<UserData>(data, tag: tag, permanent: true);
  }

  @override
  UserData getCachedUserData([String? tag]) {
    return Get.find<UserData>(tag: tag);
  }
}
