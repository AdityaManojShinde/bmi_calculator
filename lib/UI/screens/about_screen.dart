import 'package:bmi_calculator/UI/widgets/appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final url = Uri.parse('https://din0.tech/');
    void privacyPolicyLauncher() {
      try {
        launchUrl(url, mode: LaunchMode.inAppWebView);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Something went wrong."),
        ));
      }
    }

    const snackBar = SnackBar(
      content: Text("version : 1.0.0  "),
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
          ListTile(
            onTap: privacyPolicyLauncher,
            leading: const Icon(Icons.info),
            title: const Text('Privacy Policy'),
          ),
        ],
      ),
    );
  }
}
