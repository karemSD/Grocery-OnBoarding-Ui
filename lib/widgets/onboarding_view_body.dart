import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommmerce/core/constants.dart';
import 'package:ecommmerce/core/utils/size_config.dart';
import 'package:ecommmerce/core/widgets/custom_buttons.dart';
import 'package:ecommmerce/widgets/custom_dots_indictor.dart';
import 'package:flutter/material.dart';

import 'custom_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(pageController: pageController!),
        Positioned(
            left: SizeConfig.defualtSize! * 12,
            right: SizeConfig.defualtSize! * 12,
            bottom: SizeConfig.defualtSize! * 19,
            child: CustomDotsIndictor(
              color: KMainColor,
              index: pageController!.hasClients
                  ? pageController!.page!.toInt()
                  : 0,
            )),
        Visibility(
          visible:
              !(pageController!.hasClients ? pageController?.page == 2 : false),
          child: Positioned(
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
        ),
        Positioned(
            left: SizeConfig.defualtSize! * 12,
            right: SizeConfig.defualtSize! * 12,
            bottom: SizeConfig.defualtSize! * 10,
            child: CustomGeneralButton(
              onTap: () {
                print("object");
                pageController?.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              text: pageController!.hasClients
                  ? (pageController!.page == 2 ? "Get Started" : "Next")
                  : "Next ",
            ))
      ],
    );
  }
}
