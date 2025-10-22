import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:api_consume_and_persistence/presentation/controller/persisted_users_controller.dart';
import 'package:api_consume_and_persistence/presentation/widgets/user_id_info.dart';
import 'package:api_consume_and_persistence/presentation/widgets/user_location_image_preview.dart';
import 'package:api_consume_and_persistence/presentation/widgets/user_location_info.dart';
import 'package:api_consume_and_persistence/presentation/widgets/user_login_info.dart';
import 'package:api_consume_and_persistence/presentation/widgets/user_presentation_card.dart';
import 'package:api_consume_and_persistence/util/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DetailsScreen extends GetView<PersistedUsersController> {
  final RandomUser user;

  DetailsScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GetBuilder(
        init: controller,
        builder: (controller) {
          return ElevatedButton(
            child: Text(
              controller.isPersisted(user) ? AppConstants.removeButton : AppConstants.persistButton,
              style: TextStyle(fontSize: AppConstants.buttonFontSize, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: controller.isPersisted(user)
                  ? Get.theme.colorScheme.secondary
                  : Get.theme.colorScheme.primary,
              foregroundColor: controller.isPersisted(user)
                  ? Colors.black
                  : Colors.white,
            ),
            onPressed: () {
              if (controller.isPersisted(user)) {
                controller.removeUser(user);
              } else {
                controller.addUser(user);
              }
            },
          );
        },
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 290.0,
            floating: true,
            pinned: true,
            elevation: AppConstants.appBarElevation,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.only(
                bottomLeft: Radius.circular(AppConstants.appBarBorderRadius),
                bottomRight: Radius.circular(AppConstants.appBarBorderRadius),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: FittedBox(
                child: Text(
                  '${user.name.title}. ${user.name.first} ${user.name.last}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              titlePadding: EdgeInsets.only(left: 50, right: 25, bottom: 12),
              background: UserPresentationCard(user: user),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: AppConstants.defaultPadding, vertical: AppConstants.defaultPadding),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Text(AppConstants.identitySection, style: Get.theme.textTheme.headlineMedium),
                Gap(AppConstants.defaultPadding),
                UserIdInfo(user: user),
                Gap(AppConstants.defaultPadding),
                Text(AppConstants.locationSection, style: Get.theme.textTheme.headlineMedium),
                Gap(AppConstants.defaultPadding),
                UserLocationInfo(user: user),
                Gap(AppConstants.defaultPadding),
                UserLocationImagePreview(user: user),
                Gap(AppConstants.defaultPadding),
                Text(AppConstants.loginInfoSection, style: Get.theme.textTheme.headlineMedium),
                Gap(AppConstants.defaultPadding),
                UserLoginInfo(user: user),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
