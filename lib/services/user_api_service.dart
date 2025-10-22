import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../model/user_api_response.dart';

part 'user_api_service.g.dart';

@RestApi(baseUrl: "https://randomuser.me/api/")
abstract class UserApiService {
  factory UserApiService(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger errorLogger,
  }) = _UserApiService;

  @GET("/")
  Future<UserApiResponse> getRandomUser();
}
