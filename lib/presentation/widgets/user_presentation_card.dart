import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:api_consume_and_persistence/presentation/widgets/titled_column_item.dart';
import 'package:api_consume_and_persistence/presentation/widgets/titled_row_item%20copy.dart';
import 'package:api_consume_and_persistence/presentation/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class UserPresentationCard extends StatelessWidget {
  const UserPresentationCard({super.key, required this.user});

  final RandomUser user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsetsGeometry.only(left: 40, bottom: 15, top: 50),
        child: DefaultTextStyle(
          style: TextStyle(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  UserAvatar(user: user, radius: 50),
                  Gap(20),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitledColumnItem(
                          title: "Celular:",
                          child: Text(user.phone),
                        ),
                        Gap(4),
                        TitledColumnItem(
                          title: "Email:",
                          child: FittedBox(child: Text(user.email)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(15),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitledRowItem(
                      title: "Idade:",
                      child: Text('${user.dob.age} anos'),
                    ),
                    TitledRowItem(
                      title: "Genero:",
                      child: Text(
                        '${user.gender.toLowerCase() == 'male' ? 'Masculino' : 'Feminino'}',
                      ),
                    ),
                    TitledRowItem(
                      title: "Nacionalidade:",
                      child: Text('${user.nat}'),
                    ),
                    TitledRowItem(
                      title: "Nascimento:",
                      child: Text(
                        '${DateFormat("dd/MM/yyyy").format(DateTime.parse(user.dob.date))}',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
