import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:api_consume_and_persistence/translations/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/repositories/user_repository.dart';

class PersistedUsersController extends GetxController
    with StateMixin<List<RandomUser>> {
  final UserRepository _repository = Get.find<UserRepository>();

  @override
  void onInit() {
    super.onInit();
    loadUsers();
  }

  Future<void> loadUsers() async {
    change([], status: RxStatus.loading());
    try {
      value = await _repository.getAllUsers();
      change(value, status: RxStatus.success());
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }

  Future<void> addUser(RandomUser user) async {
    await _repository.addUser(user);
    Get.snackbar(
      AppStrings.successTitle,
      AppStrings.userPersistedSuccess,
      backgroundColor: Colors.grey[200],
      icon: Icon(Icons.check, color: Colors.green),
    );
    await loadUsers();
  }

  Future<void> removeUser(RandomUser user) async {
      Get.defaultDialog(
        title: AppStrings.confirmTitle,
        middleText: AppStrings.removeUserMessage,
        textCancel: AppStrings.cancelButton,
        textConfirm: AppStrings.confirmButton,
      confirmTextColor: Colors.black,
      cancelTextColor: Colors.black,
      onConfirm: () async {
        await _repository.removeUser(user.uuid);
        Get.snackbar(
          AppStrings.successTitle,
          AppStrings.userRemovedSuccess,
          backgroundColor: Colors.grey[200],
          icon: Icon(Icons.check, color: Colors.green),
        );
        Get.back();
        await loadUsers();
      },
    );
  }

  bool isPersisted(RandomUser user) {
    return value?.contains(user) ?? false;
  }
}
