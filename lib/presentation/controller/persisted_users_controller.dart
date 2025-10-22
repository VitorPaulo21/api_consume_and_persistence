import 'package:api_consume_and_persistence/domain/model/random_user.dart';
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
      'Sucesso!',
      'Usuário persistido',
      backgroundColor: Colors.grey[200],
      icon: Icon(Icons.check, color: Colors.green),
    );
    await loadUsers();
  }

  Future<void> removeUser(RandomUser user) async {
    await _repository.removeUser(user.uuid);
    Get.snackbar(
      'Sucesso!',
      'Usuário removido',
      backgroundColor: Colors.grey[200],
      icon: Icon(Icons.check, color: Colors.green),
    );
    await loadUsers();
  }

  bool isPersisted(RandomUser user) {
    return value?.contains(user) ?? false;
  }
}
