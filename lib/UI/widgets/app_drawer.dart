import 'package:bmi_calculator/Data/consts/name.dart';
import 'package:bmi_calculator/UI/screens/about_screen.dart';
import 'package:bmi_calculator/UI/screens/info_screen.dart';
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
          ListTile(
            title: const Text('Calculator'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const InfoScreen()));
            },
            title: const Text('BMI Information'),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const AboutScreen()));
            },
          ),
        ],
      ),
    );
  }
}
