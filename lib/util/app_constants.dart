import 'package:flutter/material.dart';

/// Application constants
class AppConstants {
  // Private constructor to prevent instantiation
  AppConstants._();

  // Timer and Ticker constants
  static const int initialElapsedSeconds = 4;
  static const int tickerIntervalSeconds = 5;
  
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
  static const String googleMapsGeocodeBaseUrl = "https://maps.googleapis.com/maps/api/geocode";
  
  // Google Maps API settings
  static const int defaultMapZoom = 15;
  static const Size defaultMapSize = const Size(600, 400);
  static const String defaultMapType = "roadmap";
  static const String defaultMarkerColor = "red";
  
  // Error messages
  static const String addressNotFoundError = 'Endereço não encontrado';
  static const String connectionErrorTitle = "Ops!!";
  static const String connectionErrorMessage = "Estamos com alguns problemas de conexão!!\nEntrando no modo offline! 😉";
  static const String understoodButton = "Entendido";
  
  // Success messages
  static const String userPersistedSuccess = 'Usuário persistido';
  static const String userRemovedSuccess = 'Usuário removido';
  static const String successTitle = 'Sucesso!';
  
  // Confirmation dialogs
  static const String confirmTitle = "Confirma?";
  static const String removeUserMessage = "Deseja remover este usuário da lista de Persistidos?";
  static const String cancelButton = "Cancelar";
  static const String confirmButton = "Sim";
  
  // Screen titles
  static const String homeScreenTitle = 'Lista de Usuários';
  static const String persistedScreenTitle = 'Usuários Persistidos';
  static const String noUsersLoadedMessage = "Nenhum usuário carregado ainda...";
  static const String noPersistedUsersMessage = "Nenhum usuário persistido.";
  
  // Section titles
  static const String identitySection = "Identidade";
  static const String locationSection = "Localização";
  static const String loginInfoSection = "Login Info";
  
  // Field labels
  static const String phoneLabel = "Celular:";
  static const String emailLabel = "Email:";
  static const String ageLabel = "Idade:";
  static const String genderLabel = "Genero:";
  static const String nationalityLabel = "Nacionalidade:";
  static const String birthLabel = "Nascimento:";
  
  // Gender translations
  static const String maleGender = 'Masculino';
  static const String femaleGender = 'Feminino';
  
  // Button labels
  static const String removeButton = 'Remover';
  static const String persistButton = 'Persistir';
}
