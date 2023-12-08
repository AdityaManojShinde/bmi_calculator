import 'package:bmi_calculator/Data/consts/name.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/icons/bmi.png'),
        ),
        SizedBox(
          width: 20,
        ),
        Text(appTitle),
      ],
    );
  }
}
