import 'package:ecommmerce/core/utils/size_config.dart';
import 'package:ecommmerce/features/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animeateController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animeateController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 850),
    );
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animeateController!);
    animeateController?.repeat(reverse: true);

    goToNextPage();
//
  }

  @override
  void dispose() {
    animeateController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 3,
        ),
        FadeTransition(
          opacity: fadingAnimation!,
          child: const Text(
            "Fruit Market",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins ",
                fontSize: 51,
                fontWeight: FontWeight.bold),
          ),
        ),
        const Spacer(),
        LottieBuilder.asset(
            repeat: false, "assets/anime.json", fit: BoxFit.fitWidth),
        //  Image.asset("assets/images/fruits.png"),
        const Spacer(),
      ],
    );
  }
}

void goToNextPage() {
  Future.delayed(const Duration(seconds: 6), () {
    Get.off(() => const OnBoardingView(), transition: Transition.fade);
  });
}
