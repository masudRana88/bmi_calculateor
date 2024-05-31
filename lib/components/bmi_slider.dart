import 'package:bmi_calculator/components/Gap.dart';
import 'package:bmi_calculator/res/bmi_level.dart';
import 'package:bmi_calculator/res/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiSlider extends StatelessWidget {
  const BmiSlider({
    super.key,
    required this.lavel,
    required this.onChange,
    required this.unit,
    required this.sliderDivision,
    required this.sliderValue,
    required this.sliderValueMax,
    required this.sliderValuemin,
  });

  final String lavel;
  final double sliderValue, sliderValueMax, sliderValuemin;
  final BmiUnit unit;
  final int sliderDivision;
  final Function(double) onChange;

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [ Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  lavel,
                  style: textLable,
                ),
                const Gap(
                  w: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: sliderValue.toStringAsFixed(1),
                    style: textLable.copyWith(fontSize: 40),
                    children: [TextSpan(text: " ${unit.name}", style: textLable)],
                  ),
                ),
              ],
            ),

          Slider(
            value: sliderValue,
            activeColor: Colors.white70,
            inactiveColor: Colors.white30,
            label: sliderValue.toStringAsFixed(1),
            divisions: sliderDivision,
            max: sliderValueMax,
            min: sliderValuemin,
            onChanged: (value){
              onChange(value);
            },
          ),
        ],
      );
  }
}
