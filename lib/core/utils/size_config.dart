import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenHeight;
  static double? screenWidth;
  static double? defualtSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenHeight = MediaQuery.sizeOf(context).height;
    screenWidth = MediaQuery.sizeOf(context).width;
    orientation = MediaQuery.of(context).orientation;
    defualtSize = orientation == Orientation.landscape
        ? screenHeight! * .024
        : screenWidth! * .024;

    print("Defualt Size is : $defualtSize");
  }
}

class AppSpaces {
  static SizedBox verticalSpace(double size) =>
      SizedBox(height: SizeConfig.defualtSize! * size);

  static SizedBox horizontalSpace(double size) =>
      SizedBox(width: SizeConfig.defualtSize! * size);

  static final verticalSpace5 = verticalSpace(5);
  static final verticalSpace10 = verticalSpace(10);
  static final verticalSpace15 = verticalSpace(15);
  static final verticalSpace20 = verticalSpace(20);
  static final verticalSpace40 = verticalSpace(40);

  static final horizontalSpace5 = horizontalSpace(5);
  static final horizontalSpace10 = horizontalSpace(10);
  static final horizontalSpace15 = horizontalSpace(15);
  static final horizontalSpace20 = horizontalSpace(20);
  static final horizontalSpace40 = horizontalSpace(40);
}
