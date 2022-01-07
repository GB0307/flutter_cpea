import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class UserDataCubit extends Cubit<UserData?> {
  UserDataCubit([this.tag]) : super(Get.find<UserData>(tag: tag));

  final String? tag;

  void getUserData() {}

  void updateUserData() {}
}
