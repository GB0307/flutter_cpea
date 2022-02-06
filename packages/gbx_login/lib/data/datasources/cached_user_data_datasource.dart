import 'package:gbx_core/core/errors/exceptions.dart';
import 'package:get/get.dart';

abstract class ICachedUserDataDataSource<T> {
  const ICachedUserDataDataSource();

  /// Gets the current user data from cache
  ///
  /// Throws UserNotLoggedInException if the user is not logged in
  /// Throws NoUserDataFoundException if no data is found
  T getCachedUserData();

  /// Caches the most recent user data
  Future<void> cacheUserData(T data);
}

class GetxCachedUserDataDataSource<T> extends ICachedUserDataDataSource<T> {
  const GetxCachedUserDataDataSource({this.tag});

  final String? tag;

  @override
  Future<void> cacheUserData(T data) async {
    Get.put<T>(data, tag: tag, permanent: true);
  }

  @override
  T getCachedUserData([String? tag]) {
    throw NoCachedDataException();
    return Get.find<T>(tag: tag);
  }
}
