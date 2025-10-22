import 'package:api_consume_and_persistence/presentation/controller/home_controller.dart';
import 'package:api_consume_and_persistence/presentation/screens/persisted_screen.dart';
import 'package:api_consume_and_persistence/presentation/widgets/user_list_item.dart';
import 'package:api_consume_and_persistence/translations/app_strings.dart';
import 'package:api_consume_and_persistence/util/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final HomeController controller = Get.find();

  @override
  void initState() {
    super.initState();
    controller.startTicker(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.storage),
        onPressed: () {
          Get.to(() => const PersistedScreen());
        },
      ),
      appBar: AppBar(centerTitle: true, title: Text(AppStrings.homeScreenTitle)),
      body: SafeArea(
        child: controller.obx((state) {
          return AnimatedList(
            key: controller.listKey,
            initialItemCount: state!.length,
            padding: EdgeInsets.all(AppConstants.defaultPadding),
            itemBuilder: (context, index, animation) {
              final user = state[index];
              return SizeTransition(
                sizeFactor: animation,
                axis: Axis.vertical,
                child: UserListItem(user),
              );
            },
          );
        }, onEmpty: Center(child: Text(AppStrings.noUsersLoadedMessage))),
      ),
    );
  }
}
