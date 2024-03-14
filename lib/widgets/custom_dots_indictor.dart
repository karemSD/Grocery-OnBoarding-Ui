import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../core/constants.dart';

class CustomDotsIndictor extends StatelessWidget {
  const CustomDotsIndictor(
      {super.key, required this.color, required this.index});
  final Color color;
  final int index;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      onTap: (position) {
      },
      position: index,
      dotsCount: 3,
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: color,
        activeShape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        shape: BeveledRectangleBorder(
          side: BorderSide(color: color),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
