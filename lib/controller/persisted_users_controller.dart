import 'package:api_consume_and_persistence/model/random_user.dart';
import 'package:get/get.dart';
import '../repositories/user_repository.dart';

class PersistedUsersController extends GetxController
    with StateMixin<List<RandomUser>> {
  final UserRepository _repository = Get.find<UserRepository>();

  final _users = <RandomUser>[].obs;

  List<RandomUser> get users => _users;

  @override
  void onInit() {
    super.onInit();
    loadUsers();
  }

  Future<void> loadUsers() async {
    change([], status: RxStatus.loading());
    try {
      _users.value = await _repository.getAllUsers();
      change(_users, status: RxStatus.success());
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }

  Future<void> addUser(RandomUser user) async {
    await _repository.addUser(user);
    await loadUsers();
  }

  Future<void> removeUser(String uuid) async {
    await _repository.removeUser(uuid);
    await loadUsers();
  }

  Future<bool> isPersisted(String uuid) async {
    return await _repository.getUser(uuid) != null;
  }
}
