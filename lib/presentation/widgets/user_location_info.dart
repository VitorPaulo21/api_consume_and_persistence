import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:api_consume_and_persistence/presentation/widgets/titled_row_item%20copy.dart';
import 'package:flutter/material.dart';

class UserLocationInfo extends StatelessWidget {
  const UserLocationInfo({super.key, required this.user});

  final RandomUser user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TitledRowItem(title: "Rua:", child: Text(user.fullAdress)),
        TitledRowItem(
          title: "Codigo Postal:",
          child: Text(user.location.postcode.toString()),
        ),
        TitledRowItem(title: "Cidade:", child: Text(user.location.city)),
        TitledRowItem(title: "País:", child: Text(user.location.country)),
      ],
    );
  }
}
