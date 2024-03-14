import 'package:ecommmerce/core/utils/size_config.dart';
import 'package:ecommmerce/widgets/custom_page_view_body.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key, required this.pageController,
  });
 final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        print("man");

      },
      children: const [
        CustomPageViewBody(
          imagePath: "assets/images/download.svg",
          title: "E Shopping",
          subtitle: "Exploar top organic frutis & grab them",
        ),
        CustomPageViewBody(
          imagePath: "assets/images/download2.svg",
          title: "Delivery on the way",
          subtitle: "Get your order by speed delivery ",
        ),
        CustomPageViewBody(
          imagePath: "assets/images/download3.svg",
          title: "Delivery Arrived",
          subtitle: "Order ia arrived at your Place ",
        ),
      ],
    );
  }
}
