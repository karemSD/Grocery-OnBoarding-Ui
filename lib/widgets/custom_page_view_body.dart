import 'package:ecommmerce/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPageViewBody extends StatelessWidget {
  const CustomPageViewBody(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imagePath});
  final String title;
  final String subtitle;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // image widget
        SvgPicture.asset(
          imagePath,
          height: 300,
          //width: 500,
        ),
        // title image
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
        // spacing
        AppSpaces.verticalSpace(1),

        // second text
        Text(subtitle, style: const TextStyle(fontSize: 13)),

        // pointer
      ],
    );
  }
}
