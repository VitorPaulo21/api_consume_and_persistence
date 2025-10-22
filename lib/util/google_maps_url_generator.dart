import 'package:flutter/material.dart';

class GoogleMapsUrlGenerator {
  static String generateStaticMapUrl({
    required double latitude,
    required double longitude,
    required String apiKey,
    int zoom = 15,
    Size size = const Size(600, 400),
    String mapType = "roadmap",
    String markerColor = "red",
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?'
        'center=$latitude,$longitude&'
        'zoom=$zoom&'
        'size=${size.width.toInt()}x${size.height.toInt()}&'
        'maptype=$mapType&'
        'markers=color:$markerColor%7C$latitude,$longitude&'
        'key=$apiKey';
  }
}
