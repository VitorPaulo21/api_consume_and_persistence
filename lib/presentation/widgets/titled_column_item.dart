import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TitledColumnItem extends StatelessWidget {
  const TitledColumnItem({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: DefaultTextStyle.of(
            context,
          ).style.copyWith(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Gap(2),
        child,
      ],
    );
  }
}
