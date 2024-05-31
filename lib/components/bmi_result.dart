import 'package:bmi_calculator/components/Gap.dart';
import 'package:flutter/material.dart';

import '../res/style.dart';

class BmiResult extends StatelessWidget {
  final Color boderColor;
  final double bmiValue;
  String status;
  BmiResult({
    super.key,
    required this.bmiValue,
    required this.boderColor,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              alignment: Alignment.center,
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 10,
                  color: boderColor,
                ),
              ),
              child: Text(
                bmiValue.toStringAsFixed(1),
                style: textLable.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(h: 15),
            FittedBox(
                fit: BoxFit.contain,
                child: Text(status, style: resultStatus),
              ),
          ],
        ),
    );

  }
}
