import 'package:api_consume_and_persistence/controller/persisted_users_controller.dart';
import 'package:api_consume_and_persistence/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersistedScreen extends GetView<PersistedUsersController> {
  const PersistedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela de Usuários Persistidos')),
      body: controller.obx(
        (state) => ListView.builder(
          itemCount: state?.length ?? 0,
          itemBuilder: (context, index) {
            final user = state![index];
            return Dismissible(
              key: Key(user.uuid),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {
                controller.removeUser(user.uuid);
                Get.snackbar('Ação', 'Usuário removido');
              },
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20),
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.picture.thumbnail),
                ),
                title: Text('${user.name.first} ${user.name.last}'),
                subtitle: Text(user.email),
                onTap: () {
                  Get.to(() => DetailsScreen(user: user));
                },
              ),
            );
          },
        ),
        onLoading: const Center(child: CircularProgressIndicator()),
        onError: (error) => Center(child: Text('Error: $error')),
        onEmpty: const Center(child: Text('Nenhum usuário persistido.')),
      ),
    );
  }
}
