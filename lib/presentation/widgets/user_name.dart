import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserName extends StatelessWidget {
  const UserName(this.user, {super.key, this.color});

  final RandomUser user;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "user-name:${user.uuid}",
      child: Text(
        '${user.name.first} ${user.name.last}',
        style: Get.theme.textTheme.bodyLarge?.copyWith(color: color),
      ),
    );
  }
}
