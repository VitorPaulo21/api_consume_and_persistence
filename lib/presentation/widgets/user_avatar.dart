import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, required this.user, this.radius});

  final RandomUser user;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "user-avatar:${user.uuid}",
      child: CircleAvatar(
        radius: radius,
        foregroundImage: NetworkImage(user.picture.large),
        backgroundImage: AssetImage('assets/avatar.png'),
        onForegroundImageError: (exception, stackTrace) {},
      ),
    );
  }
}
