import 'package:api_consume_and_persistence/presentation/controller/persisted_users_controller.dart';
import 'package:api_consume_and_persistence/presentation/widgets/user_list_item.dart';
import 'package:api_consume_and_persistence/util/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersistedScreen extends GetView<PersistedUsersController> {
  const PersistedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.persistedScreenTitle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: controller.obx(
          (state) => ListView.builder(
            itemCount: state?.length ?? 0,
            padding: EdgeInsets.all(AppConstants.defaultPadding),
            itemBuilder: (context, index) {
              final user = state![index];
              return UserListItem(user, removeButton: true);
            },
          ),
          onLoading: const Center(child: CircularProgressIndicator()),
          onError: (error) => Center(child: Text('Error: $error')),
          onEmpty: const Center(child: Text(AppConstants.noPersistedUsersMessage)),
        ),
      ),
    );
  }
}
