import 'package:api_consume_and_persistence/model/random_user.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../repositories/user_repository.dart';

class HomeController extends GetxController with StateMixin<List<RandomUser>> {
  Ticker? _ticker;
  int _elapsedSeconds = 4;
  final UserRepository _repository = Get.find<UserRepository>();
  final _fetchedUsers = <RandomUser>[].obs;
  List<RandomUser> get fetchedUsers => _fetchedUsers;

  void startTicker(TickerProvider provider) async {
    // Aqui o ideal seria utilizar um Timer.
    // Pois o ideal do Ticker é apenas para animações.
    // Porem segue a implementação com Ticker conforme solicitado nos requisitos.
    await fetchNewUser();
    _ticker = provider.createTicker((elapsed) {
      if (elapsed.inSeconds > _elapsedSeconds) {
        Logger().d("Ellapsed Time: ${elapsed.inSeconds}");
        fetchNewUser();
        _elapsedSeconds += 5;
      }
    });
    _ticker?.start();
  }

  void pause() {
    _ticker?.stop();
  }

  @override
  void onClose() {
    _ticker?.dispose();
    super.onClose();
  }

  Future<void> fetchNewUser() async {
    try {
      final user = await _repository.fetchRandomUser();
      _fetchedUsers.add(user);
      change(_fetchedUsers, status: RxStatus.success());
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
