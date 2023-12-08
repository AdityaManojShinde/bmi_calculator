import 'package:bmi_calculator/Data/consts/name.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/icons/bmi.png',
                fit: BoxFit.cover,
                height: 100,
              ),
              const Text(appTitle),
            ],
          )),
          const ListTile(
            title: Text('Calculator'),
          ),
          const ListTile(
            title: Text('Information about BMI'),
          ),
          const ListTile(
            title: Text('Version'),
          ),
          const ListTile(
            title: Text('Privacy Policy'),
          ),
        ],
      ),
    );
  }
}
