import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'google_location_service.g.dart';

@RestApi(baseUrl: "https://maps.googleapis.com/maps/api/geocode")
abstract class GoogleLocationService {
  factory GoogleLocationService(Dio dio, {String? baseUrl}) =
      _GoogleLocationService;

  @GET("/json")
  Future<dynamic> getCoordinates(
    @Query("address") String address,
    @Query("key") String apiKey,
  );
}
