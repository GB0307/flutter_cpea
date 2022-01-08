import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class UserDataCubit<T> extends Cubit<T?> {
  UserDataCubit([this.tag]) : super(Get.find<T>(tag: tag));

  final String? tag;

  void getUserData() {}

  void updateUserData() {}
}
