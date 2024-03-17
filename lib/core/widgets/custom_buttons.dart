import 'package:ecommmerce/core/constants.dart';
import 'package:ecommmerce/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton(
      {super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      highlightColor: KMainColor.withOpacity(.8),
      padding: EdgeInsets.zero,
      onPressed: onTap,
      child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.defualtSize! * 6.7,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 3),
          color: KMainColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            textAlign: TextAlign.left,
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomNextButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final Color borderColor;

  final Function() onTap;
  const CustomNextButton({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Material(
        color: backgroundColor,
        elevation: 8,
        shape: CircleBorder(
          side: BorderSide(width: 2, color: borderColor),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Icon(
            icon,
            size: 30,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
