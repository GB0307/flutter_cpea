import 'package:cpea/src/core/interfaces/response.dart';
import 'package:cpea/src/core/interfaces/use_case.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:get/get.dart' hide Response;

class GetCachedUserData extends IUseCase<UserData, String?> {
  @override
  // ignore: avoid_renaming_method_parameters
  Response<UserData> call([String? tag]) {
    // TODO: FETCH USER FROM REPO
    return Response.from(Get.find<UserData>(tag: tag));
  }
}
