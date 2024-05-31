/////         This is Gap. It likes to Margin.
////          Maide by Masud
////          Date : 20/5/2024

import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final double h;
  final double w;
  const Gap({super.key, this.h = 0.0, this.w = 0.0});

  @override
  Widget build(BuildContext context) {
    if (h > 0 && w > 0) {
      return SizedBox(
        width: w,
        height: h,
      );
    } else if (w > 0) {
      return SizedBox(
        width: w,
      );
    } else if (h > 0) {
      return SizedBox(
        height: h,
      );
    } else {
      return const SizedBox(
        width: 5,
        height: 5,
      );
    }
  }
}
