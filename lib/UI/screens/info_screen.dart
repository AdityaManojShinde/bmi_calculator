import 'package:bmi_calculator/Data/bmi_data/bmi_data.dart';
import 'package:bmi_calculator/UI/widgets/bmi_indicators.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final url = Uri.parse(
        'https://www.who.int/data/gho/data/themes/topics/topic-details/GHO/body-mass-index');
    void whoUrlLauncher() {
      try {
        launchUrl(url, mode: LaunchMode.inAppWebView);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Something went wrong."),
        ));
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Information'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                BmiInfo.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                BmiInfo.description,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              const BmiIndicators(),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Read More Information about BMI on WHO(World Health Organization) website : ',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              InkWell(
                  onTap: whoUrlLauncher,
                  child: const Text(
                    'https://www.who.int/data/gho/data/themes/topics/topic-details/GHO/body-mass-index',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blueAccent),
                  )),
              const SizedBox(
                height: 20,
              ),
              for (var entry in BmiInfo.info.entries)
                Text("${entry.key}\n${entry.value}\n"),
            ],
          ),
        ));
  }
}
