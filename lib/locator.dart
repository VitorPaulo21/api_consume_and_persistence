import 'package:api_consume_and_persistence/domain/repositories/google_location_repository.dart';
import 'package:api_consume_and_persistence/domain/repositories/user_repository.dart';
import 'package:api_consume_and_persistence/domain/services/google_location_service.dart';
import 'package:api_consume_and_persistence/domain/services/user_api_service.dart';
import 'package:api_consume_and_persistence/util/error_logger.dart';
import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';

void initSl() {
  final dio = Dio();
  Get.put<UserApiService>(UserApiService(dio, errorLogger: ErrorLogger()));
  Get.put<UserRepository>(UserRepositoryImpl());
  Get.put<GoogleLocationService>(GoogleLocationService(dio));
  Get.put<GoogleLocationRepository>(GoogleLocationRepositoryImpl());
}
