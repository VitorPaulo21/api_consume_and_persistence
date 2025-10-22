import 'package:api_consume_and_persistence/domain/services/google_location_service.dart';
import 'package:api_consume_and_persistence/translations/app_strings.dart';
import 'package:api_consume_and_persistence/util/app_constants.dart';
import 'package:api_consume_and_persistence/util/google_maps_url_generator.dart';
import 'package:get/get.dart';

abstract class GoogleLocationRepository {
  Future<String> getStaticImageFromAddress({
    required String street,
    required String number,
    required String city,
    required String country,
  });
}

class GoogleLocationRepositoryImpl implements GoogleLocationRepository {
  // TODO: Move API key to environment variables
  static const String _GOOGLE_MAPS_API_KEY = 'AIzaSyCUr-3obn3_XLd5g6lb6u0fr5Yq0V7Gy00';

  @override
  Future<String> getStaticImageFromAddress({
    required String street,
    required String number,
    required String city,
    required String country,
  }) async {
    final String address = '$street $number, $city, $country';
    final GoogleLocationService service = Get.find();

    final response = await service.getCoordinates(
      address,
      _GOOGLE_MAPS_API_KEY,
    );

    if (response['status'] != 'OK' || response['results'].isEmpty) {
      throw Exception(AppStrings.addressNotFoundError);
    }

    final location = response['results'][0]['geometry']['location'];
    final lat = location['lat'] as double;
    final lng = location['lng'] as double;

    return GoogleMapsUrlGenerator.generateStaticMapUrl(
      latitude: lat,
      longitude: lng,
      apiKey: _GOOGLE_MAPS_API_KEY,
      zoom: AppConstants.defaultMapZoom,
      size: AppConstants.defaultMapSize,
      mapType: AppConstants.defaultMapType,
      markerColor: AppConstants.defaultMarkerColor,
    );
  }
}
