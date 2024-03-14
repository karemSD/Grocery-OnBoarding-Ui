import 'package:ecommmerce/core/utils/size_config.dart';
import 'package:ecommmerce/widgets/custom_page_view_body.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: (value) {
        print("man");
      },
      children: const [
        CustomPageViewBody(
          imagePath: "assets/images/download",
          title: "E Shopping",
          subtitle: "",
        )
      ],
    );
  }
}
