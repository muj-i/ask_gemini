import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/icons/icon1.png',
                  width: 200, height: 200, fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
