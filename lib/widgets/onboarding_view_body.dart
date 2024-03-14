import 'package:ecommmerce/core/utils/size_config.dart';
import 'package:ecommmerce/core/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

import 'custom_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomPageView(),
        Positioned(
          top: SizeConfig.defualtSize! * 10,
          right: 32,
          child: const Text(
            "Skip",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        Positioned(
            left: SizeConfig.defualtSize! * 12,
            right: SizeConfig.defualtSize! * 12,
            bottom: SizeConfig.defualtSize! * 10,
            child: const CustomGeneralButton(
              text: "Next",
            ))
      ],
    );
  }
}
