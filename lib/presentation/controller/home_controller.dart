import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../../domain/repositories/user_repository.dart';

class HomeController extends GetxController with StateMixin<List<RandomUser>> {
  Ticker? _ticker;
  int _elapsedSeconds = 4;
  bool _noConnection = false;
  bool isPaused = false;
  final UserRepository _repository = Get.find<UserRepository>();
  final _fetchedUsers = <RandomUser>[].obs;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<RandomUser> get fetchedUsers => _fetchedUsers;
  GlobalKey<AnimatedListState> get listKey => _listKey;

  void startTicker(TickerProvider _tickerProvider) async {
    // Aqui o ideal seria utilizar um Timer.
    // Pois o ideal do Ticker é apenas para animações.
    // Porem segue a implementação com Ticker conforme solicitado nos requisitos.
    await fetchNewUser();
    _ticker = _tickerProvider.createTicker((elapsed) {
      if (elapsed.inSeconds > _elapsedSeconds) {
        if (kDebugMode) {
          Logger().i("Ellapsed Time: ${elapsed.inSeconds}");
        }
        fetchNewUser();
        _elapsedSeconds = elapsed.inSeconds + 5;
      }
    });
    _ticker?.start();
  }

  void pause() {}

  void play() {}

  @override
  void onClose() {
    _ticker?.dispose();
    super.onClose();
  }

  Future<void> fetchNewUser() async {
    try {
      final user = await _repository.fetchRandomUser();
      _fetchedUsers.insert(0, user);
      _listKey.currentState?.insertItem(
        0,
        duration: const Duration(milliseconds: 500),
      );
      _noConnection = false;
      change(_fetchedUsers, status: RxStatus.success());
    } on DioException {
      if (!_noConnection) {
        Get.defaultDialog(
          title: "Ops!!",
          middleText:
              "Estamos com alguns problemas de conexão!!\nEntrando no modo offline! 😉",
          textConfirm: "Entendido",
          confirmTextColor: Colors.black,
          onConfirm: () => Get.back(),
        );
        if (_fetchedUsers.isEmpty) {
          change(null, status: RxStatus.empty());
        }
        _noConnection = true;
      }
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
