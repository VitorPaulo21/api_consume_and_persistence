import 'package:api_consume_and_persistence/util/app_constants.dart';
import 'package:flutter/material.dart';

class TitledRowItem extends StatelessWidget {
  const TitledRowItem({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$title ',
        style: DefaultTextStyle.of(
          context,
        ).style.copyWith(fontWeight: FontWeight.bold, fontSize: AppConstants.titleFontSize),
        children: [WidgetSpan(child: child)],
      ),
    );
  }
}
