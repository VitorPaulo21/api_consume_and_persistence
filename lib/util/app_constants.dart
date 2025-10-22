import 'package:flutter/material.dart';

/// Application constants
class AppConstants {
  // Private constructor to prevent instantiation
  AppConstants._();

  // Timer and Ticker constants
  static const int initialElapsedSeconds = 4;
  static const int tickerIntervalSeconds = 4;

  // Animation durations
  static const Duration listItemAnimationDuration = Duration(milliseconds: 500);
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);

  // UI dimensions
  static const double defaultPadding = 15.0;
  static const double smallPadding = 4.0;
  static const double mediumPadding = 10.0;
  static const double largePadding = 20.0;

  // Avatar and image sizes
  static const double defaultAvatarRadius = 25.0;
  static const double largeAvatarRadius = 50.0;
  static const double locationImageHeight = 300.0;

  // AppBar styling
  static const double appBarBorderRadius = 20.0;
  static const double appBarElevation = 5.0;

  // Card styling
  static const double cardElevation = 5.0;
  static const double cardMargin = 10.0;

  // Button styling
  static const double buttonSplashRadius = 20.0;

  // Text styling
  static const double titleFontSize = 15.0;
  static const double buttonFontSize = 16.0;

  // Hive box names
  static const String usersBoxName = 'users';

  // API endpoints
  static const String randomUserApiBaseUrl = "https://randomuser.me/api/";
  static const String googleMapsGeocodeBaseUrl =
      "https://maps.googleapis.com/maps/api/geocode";

  // Google Maps API settings
  static const int defaultMapZoom = 15;
  static const Size defaultMapSize = const Size(600, 400);
  static const String defaultMapType = "roadmap";
  static const String defaultMarkerColor = "red";
}
