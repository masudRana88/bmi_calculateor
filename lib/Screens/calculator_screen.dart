import 'package:bmi_calculator/components/Gap.dart';
import 'package:bmi_calculator/components/bmi_result.dart';
import 'package:bmi_calculator/components/bmi_slider.dart';
import 'package:bmi_calculator/res/bmi_level.dart';
import 'package:bmi_calculator/res/bmi_provider.dart';
import 'package:bmi_calculator/res/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgPrimary,
      appBar: AppBar(
        title: const Text("BMI"),
      ),
      body: Column(
        children: [
          const Gap(
            h: 20,
          ),
          Consumer<BmiProvider>(
            builder: (context, provider, child) => BmiSlider(
                lavel: "Hight",
                onChange: (newValue) {
                  provider.chageHeight(newValue);
                },
                unit: BmiUnit.m,
                sliderDivision: 100,
                sliderValue: provider.heightValue,
                sliderValueMax: 2.5,
                sliderValuemin: 1.1),
          ),
          const Gap(
            h: 20,
          ),
          Consumer<BmiProvider>(
            builder: (context, provider, child) => BmiSlider(
                lavel: "Weight",
                onChange: (newValue) {
                  provider.chageWeight(newValue);
                },
                unit: BmiUnit.kg,
                sliderDivision: 200,
                sliderValue: provider.weightValue,
                sliderValueMax: 130.0,
                sliderValuemin: 30.0),
          ),
          const Gap(h: 10),
          Consumer<BmiProvider>(
              builder: (context, provider, child) => BmiResult(
                  bmiValue: provider.bmi,
                  boderColor: provider.borderColor,
                  status: provider.status),
          ),
        ],
      ),
    );
  }
}
