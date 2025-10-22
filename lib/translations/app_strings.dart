import 'package:get/get.dart';

/// Helper class for accessing translated strings
class AppStrings {
  // Private constructor to prevent instantiation
  AppStrings._();

  // Error messages
  static String get addressNotFoundError => 'addressNotFoundError'.tr;
  static String get connectionErrorTitle => 'connectionErrorTitle'.tr;
  static String get connectionErrorMessage => 'connectionErrorMessage'.tr;
  static String get understoodButton => 'understoodButton'.tr;
  
  // Success messages
  static String get userPersistedSuccess => 'userPersistedSuccess'.tr;
  static String get userRemovedSuccess => 'userRemovedSuccess'.tr;
  static String get successTitle => 'successTitle'.tr;
  
  // Confirmation dialogs
  static String get confirmTitle => 'confirmTitle'.tr;
  static String get removeUserMessage => 'removeUserMessage'.tr;
  static String get cancelButton => 'cancelButton'.tr;
  static String get confirmButton => 'confirmButton'.tr;
  
  // Screen titles
  static String get homeScreenTitle => 'homeScreenTitle'.tr;
  static String get persistedScreenTitle => 'persistedScreenTitle'.tr;
  static String get noUsersLoadedMessage => 'noUsersLoadedMessage'.tr;
  static String get noPersistedUsersMessage => 'noPersistedUsersMessage'.tr;
  
  // Section titles
  static String get identitySection => 'identitySection'.tr;
  static String get locationSection => 'locationSection'.tr;
  static String get loginInfoSection => 'loginInfoSection'.tr;
  
  // Field labels
  static String get phoneLabel => 'phoneLabel'.tr;
  static String get emailLabel => 'emailLabel'.tr;
  static String get ageLabel => 'ageLabel'.tr;
  static String get genderLabel => 'genderLabel'.tr;
  static String get nationalityLabel => 'nationalityLabel'.tr;
  static String get birthLabel => 'birthLabel'.tr;
  
  // Gender translations
  static String get maleGender => 'maleGender'.tr;
  static String get femaleGender => 'femaleGender'.tr;
  
  // Button labels
  static String get removeButton => 'removeButton'.tr;
  static String get persistButton => 'persistButton'.tr;
}
