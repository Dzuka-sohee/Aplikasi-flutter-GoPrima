import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/widgets/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)), // Simulate a delay
      builder: (context, snapshot) {
        return GetMaterialApp(
          title: "Go Prima",
          debugShowCheckedModeBanner: false,
          initialRoute:
              snapshot.connectionState == ConnectionState.waiting
                  ? '/splash'
                  : AppPages.INITIAL,
          getPages: [
            GetPage(name: '/splash', page: () => SplashScreen()),
            ...AppPages.routes,
          ],
        );
      },
    );
  }
}
