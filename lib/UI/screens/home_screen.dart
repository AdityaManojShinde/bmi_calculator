// ignore_for_file: unused_import

import 'package:bmi_calculator/UI/widgets/app_drawer.dart';
import 'package:bmi_calculator/UI/widgets/appbar_title.dart';
import 'package:bmi_calculator/UI/widgets/bmi_indicators.dart';
import 'package:bmi_calculator/UI/widgets/chart.dart';
import 'package:bmi_calculator/core/providers/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bmi = ref.watch(bmiProvider);
    void submitForm() {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
      }
    }

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const AppBarTitle(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onSaved: (value) {
                  ref
                      .read(heightProvider.notifier)
                      .update((state) => double.parse(value!));
                },
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  hintText: '160 cm',
                  suffixText: 'cm',
                  labelText: 'Height',
                ),
                keyboardType: TextInputType.number,
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your height';
                  }
                  return null;
                },
              ),
              TextFormField(
                onSaved: (value) {
                  ref
                      .read(weightProvider.notifier)
                      .update((state) => double.parse(value!));
                },
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  hintText: '50 kg',
                  labelText: 'Weight',
                  suffixText: 'kg',
                ),
                keyboardType: TextInputType.number,
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your weight';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  onPressed: submitForm,
                  child: const Text('Calculate BMI'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.all(20),
                      height: 300,
                      child: const BMIChart()),
                  Positioned(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'BMI : ${bmi.toStringAsFixed(1)}',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.all(13),
                child: BmiIndicators(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
