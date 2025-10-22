import 'package:api_consume_and_persistence/repositories/user_repository.dart';
import 'package:api_consume_and_persistence/services/user_api_service.dart';
import 'package:api_consume_and_persistence/util/error_logger.dart';
import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';

void initSl() {
  final dio = Dio();
  Get.put<UserApiService>(UserApiService(dio, errorLogger: ErrorLogger()));
  Get.put<UserRepository>(UserRepositoryImpl());
}
