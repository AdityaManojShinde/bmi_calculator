import 'package:bmi_calculator/UI/widgets/appbar_title.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('version : 1.0.0'),
    );
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ListTile(
            leading: const Icon(Icons.android),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            title: const Text('Version'),
          ),
          const ListTile(
            leading: Icon(Icons.info),
            title: Text('Privacy Policy'),
          ),
        ],
      ),
    );
  }
}
