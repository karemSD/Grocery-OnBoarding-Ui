import 'package:ecommmerce/core/constants.dart';
import 'package:ecommmerce/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.defualtSize! * 6.7,
        decoration: BoxDecoration(
          color: KMainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          textAlign: TextAlign.left,
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        )),
      ),
    );
  }
}
