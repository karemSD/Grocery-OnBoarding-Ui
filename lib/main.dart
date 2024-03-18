import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/splash_view.dart';

//! Karem Saad 
//? Flutter and Laravel Developer 

void main() {
  runApp(const FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
      // home: const SplashView(),
      home: const Scaffold(
        body: SplashView(),
      ),
    );
  }
}
