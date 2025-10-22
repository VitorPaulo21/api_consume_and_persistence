import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:api_consume_and_persistence/presentation/controller/persisted_users_controller.dart';
import 'package:api_consume_and_persistence/presentation/screens/details_screen.dart';
import 'package:api_consume_and_persistence/presentation/widgets/user_avatar.dart';
import 'package:api_consume_and_persistence/presentation/widgets/user_email.dart';
import 'package:api_consume_and_persistence/presentation/widgets/user_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserListItem extends StatelessWidget {
  const UserListItem(this.user, {super.key, this.removeButton = false});

  final RandomUser user;
  final bool removeButton;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        key: ValueKey(user.uuid),
        leading: UserAvatar(user: user),
        title: UserName(user),
        subtitle: UserEmail(user),
        trailing: removeButton
            ? IconButton(
                splashRadius: 20,
                onPressed: () {
                  Get.defaultDialog(
                    title: "Confirma?",
                    middleText:
                        "Deseja remover este usuário da lista de Persistidos?",
                    textCancel: "Cancelar",
                    textConfirm: "Sim",
                    confirmTextColor: Colors.black,
                    cancelTextColor: Colors.black,
                    onConfirm: () {
                      Get.back();
                      Get.find<PersistedUsersController>().removeUser(user);
                    },
                  );
                },
                icon: Icon(Icons.delete_forever_outlined, color: Colors.red),
              )
            : null,
        onTap: () {
          Get.to(() => DetailsScreen(user: user));
        },
      ),
    );
  }
}
