import 'package:api_consume_and_persistence/model/random_user.dart';
import 'package:get/get.dart';
import 'package:hive_ce_flutter/adapters.dart';
import '../services/user_api_service.dart';

abstract class UserRepository {
  Future<List<RandomUser>> getAllUsers();
  Future<void> addUser(RandomUser user);
  Future<void> removeUser(String uuid);
  Future<RandomUser?> getUser(String uuid);
  Future<RandomUser> fetchRandomUser();
}

class UserRepositoryImpl implements UserRepository {
  final UserApiService _apiService = Get.find<UserApiService>();
  final Box<RandomUser> _box = Hive.box<RandomUser>('users');

  @override
  Future<List<RandomUser>> getAllUsers() async {
    return _box.values.toList();
  }

  @override
  Future<void> addUser(RandomUser user) async {
    await _box.put(user.uuid, user);
  }

  @override
  Future<void> removeUser(String uuid) async {
    await _box.delete(uuid);
  }

  @override
  Future<RandomUser?> getUser(String uuid) async {
    return _box.get(uuid);
  }

  @override
  Future<RandomUser> fetchRandomUser() async {
    final response = await _apiService.getRandomUser();
    return response.results.first;
  }
}
