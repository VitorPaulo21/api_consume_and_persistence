import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:api_consume_and_persistence/hive_registrar.g.dart';
import 'package:api_consume_and_persistence/locator.dart';
import 'package:api_consume_and_persistence/presentation/controller/home_controller.dart';
import 'package:api_consume_and_persistence/presentation/controller/persisted_users_controller.dart';
import 'package:api_consume_and_persistence/presentation/screens/home_screen.dart';
import 'package:api_consume_and_persistence/translations/app_translations.dart';
import 'package:api_consume_and_persistence/util/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hive_ce_flutter/adapters.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapters();
  await Hive.openBox<RandomUser>(AppConstants.usersBoxName);

  initSl();

  runApp(
    GetMaterialApp(
      title: 'Random User App',
      debugShowCheckedModeBanner: false,
      translations: AppTranslations(),
      locale: const Locale('pt', 'BR'),
      fallbackLocale: const Locale('pt', 'BR'),
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.purple,
          onPrimary: Colors.white,
          secondary: Colors.amber,
          onSecondary: Colors.black,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          scrolledUnderElevation: AppConstants.appBarElevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.only(
              bottomLeft: Radius.circular(AppConstants.appBarBorderRadius),
              bottomRight: Radius.circular(AppConstants.appBarBorderRadius),
            ),
          ),
        ),
      ),
      home: const HomeScreen(),
      initialBinding: BindingsBuilder(() {
        Get.put(HomeController());
        Get.put(PersistedUsersController());
      }),
    ),
  );
}
