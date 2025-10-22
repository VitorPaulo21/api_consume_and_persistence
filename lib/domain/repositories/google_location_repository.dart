import 'package:api_consume_and_persistence/domain/services/google_location_service.dart';
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
  // Chave de api posicionada aqui apenas para este caso
  static final _GOOGLE_MAPS_API_KEY = 'AIzaSyCUr-3obn3_XLd5g6lb6u0fr5Yq0V7Gy00';

  String _generateLocationImageUrl({
    required double latitude,
    required double longitude,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=15&size=600x400&maptype=roadmap&markers=color:red%7C$latitude,$longitude&key=$_GOOGLE_MAPS_API_KEY';
  }

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
      throw Exception('Endereço não encontrado');
    }

    final location = response['results'][0]['geometry']['location'];
    final lat = location['lat'];
    final lng = location['lng'];

    return _generateLocationImageUrl(latitude: lat, longitude: lng);
  }
}
