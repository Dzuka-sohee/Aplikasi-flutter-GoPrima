import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      // Navigasi setelah delay (aktifkan kalau perlu)
      // Get.offAllNamed(AppPages.INITIAL);
    });

    return Scaffold(
      backgroundColor: Color(0xFFFFEA00),
      body: Align(
        alignment: Alignment.centerRight, // Mulai geser ke kanan
        child: Padding(
          padding: const EdgeInsets.only(right: 75), // Atur seberapa ke kanan
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.0, end: 1.0),
            duration: Duration(milliseconds: 1000),
            curve: Curves.easeOutBack,
            builder: (context, scale, child) {
              return Transform.scale(
                scale: scale,
                child: SizedBox(
                  width: Get.width * 0.5,
                  height: Get.width * 0.5,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/logo/logo-splash.png",
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
