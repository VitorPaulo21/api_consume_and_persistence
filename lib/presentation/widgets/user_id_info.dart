import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:api_consume_and_persistence/presentation/widgets/titled_row_item.dart';
import 'package:flutter/material.dart';

class UserIdInfo extends StatelessWidget {
  const UserIdInfo({super.key, required this.user});

  final RandomUser user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TitledRowItem(title: "Tipo de Documento:", child: Text(user.id.name)),
        TitledRowItem(
          title: "N° Documento:",
          child: Text(user.id.value.toString()),
        ),
      ],
    );
  }
}
