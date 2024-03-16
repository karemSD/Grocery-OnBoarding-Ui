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
    with TickerProviderStateMixin {
  AnimationController? animeateController;
  AnimationController? _lottieanimationController;

  Animation<double>? fadingAnimation;

  void playAnimation() {
    _lottieanimationController?.forward();
  }

// Stop the animation
  void stopAnimation() {
    _lottieanimationController?.reverse();
  }

  @override
  void initState() {
    super.initState();
    animeateController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 850),
    );
    _lottieanimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _lottieanimationController?.forward();
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animeateController!);
    animeateController?.repeat(reverse: true);

    goToNextPage();
//
  }

  @override
  void dispose() {
    animeateController?.dispose();
    _lottieanimationController?.dispose();
    super.dispose();
  }

  bool animerun = false;
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
                fontFamily: "Poppins",
                fontSize: 51,
                fontWeight: FontWeight.bold),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            print("object");
            if (animerun == false) {
              animerun = true;
              playAnimation();
            } else {
              animerun = false;
              stopAnimation();
            }
          },
          child: LottieBuilder.asset(
            controller: _lottieanimationController,
            repeat: false,
            "assets/anime.json",
            fit: BoxFit.fitWidth,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}

void goToNextPage() {
  Future.delayed(const Duration(seconds: 6), () {
    Get.to(() => const OnBoardingView(), transition: Transition.fade);
  });
}
