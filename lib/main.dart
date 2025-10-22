import 'package:api_consume_and_persistence/controller/home_controller.dart';
import 'package:api_consume_and_persistence/controller/persisted_users_controller.dart';
import 'package:api_consume_and_persistence/locator.dart';
import 'package:api_consume_and_persistence/model/coordinates.dart';
import 'package:api_consume_and_persistence/model/dob.dart';
import 'package:api_consume_and_persistence/model/location.dart';
import 'package:api_consume_and_persistence/model/login.dart';
import 'package:api_consume_and_persistence/model/picture.dart';
import 'package:api_consume_and_persistence/model/random_user.dart';
import 'package:api_consume_and_persistence/model/registered.dart';
import 'package:api_consume_and_persistence/model/street.dart';
import 'package:api_consume_and_persistence/model/user_id.dart';
import 'package:api_consume_and_persistence/model/user_name.dart';
import 'package:api_consume_and_persistence/model/user_timezone.dart';
import 'package:api_consume_and_persistence/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_ce_flutter/adapters.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(RandomUserAdapter());
  Hive.registerAdapter(UserNameAdapter());
  Hive.registerAdapter(LocationAdapter());
  Hive.registerAdapter(StreetAdapter());
  Hive.registerAdapter(CoordinatesAdapter());
  Hive.registerAdapter(UserTimezoneAdapter());
  Hive.registerAdapter(LoginAdapter());
  Hive.registerAdapter(DobAdapter());
  Hive.registerAdapter(RegisteredAdapter());
  Hive.registerAdapter(UserIdAdapter());
  Hive.registerAdapter(PictureAdapter());
  await Hive.openBox<RandomUser>('users');

  initSl();

  runApp(
    GetMaterialApp(
      title: 'Random User App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      initialBinding: BindingsBuilder(() {
        Get.put(HomeController());
        Get.put(PersistedUsersController());
      }),
    ),
  );
}
