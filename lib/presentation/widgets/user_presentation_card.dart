import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:api_consume_and_persistence/presentation/widgets/titled_column_item.dart';
import 'package:api_consume_and_persistence/presentation/widgets/titled_row_item.dart';
import 'package:api_consume_and_persistence/presentation/widgets/user_avatar.dart';
import 'package:api_consume_and_persistence/util/app_constants.dart';
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
                  UserAvatar(user: user, radius: AppConstants.largeAvatarRadius),
                  Gap(AppConstants.largePadding),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitledColumnItem(
                          title: AppConstants.phoneLabel,
                          child: Text(user.phone),
                        ),
                        Gap(AppConstants.smallPadding),
                        TitledColumnItem(
                          title: AppConstants.emailLabel,
                          child: FittedBox(child: Text(user.email)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(AppConstants.defaultPadding),
              Padding(
                padding: const EdgeInsets.only(left: AppConstants.defaultPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitledRowItem(
                      title: AppConstants.ageLabel,
                      child: Text('${user.dob.age} anos'),
                    ),
                    TitledRowItem(
                      title: AppConstants.genderLabel,
                      child: Text(
                        '${user.gender.toLowerCase() == 'male' ? AppConstants.maleGender : AppConstants.femaleGender}',
                      ),
                    ),
                    TitledRowItem(
                      title: AppConstants.nationalityLabel,
                      child: Text('${user.nat}'),
                    ),
                    TitledRowItem(
                      title: AppConstants.birthLabel,
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
