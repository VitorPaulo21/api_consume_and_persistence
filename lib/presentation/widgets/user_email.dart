import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserEmail extends StatelessWidget {
  const UserEmail(this.user, {super.key, this.color});

  final RandomUser user;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "user-email:${user.uuid}",
      child: Text(
        user.email,
        style: Get.theme.textTheme.bodyMedium?.copyWith(color: color),
      ),
    );
  }
}
