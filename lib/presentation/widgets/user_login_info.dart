import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:api_consume_and_persistence/presentation/widgets/titled_row_item%20copy.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class UserLoginInfo extends StatelessWidget {
  const UserLoginInfo({super.key, required this.user});

  final RandomUser user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TitledRowItem(title: "Login:", child: Text(user.login.username)),
        TitledRowItem(title: "Senha:", child: Text(user.login.password)),
        TitledRowItem(
          title: "Registrado(a) Em:",
          child: Text(
            DateFormat(
              'dd/MM/yyyy',
            ).format(DateTime.parse(user.registered.date)),
          ),
        ),
        Gap(3),
        TitledRowItem(title: "UUID:", child: Text(user.login.uuid)),
        Gap(3),
        TitledRowItem(title: "SALT:", child: Text(user.login.salt)),
        Gap(3),
        TitledRowItem(title: "SHA-1:", child: Text(user.login.sha1)),
        Gap(3),
        TitledRowItem(title: "MD5:", child: Text(user.login.md5)),
        Gap(3),
        TitledRowItem(title: "SHA-256:", child: Text(user.login.sha256)),
      ],
    );
  }
}
