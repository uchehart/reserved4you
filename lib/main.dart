import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Pages/Onboarding/screens/onboarding_screen.dart';
import 'Pages/Onboarding/screens/onbording_continuation_screen.dart';
import 'Pages/Onboarding/screens/resturant_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          //  primarySwatch: Colors.blue,
          ),
      // home: DashBoardView(),
      home: const GoToCheckoutProcess(),
    );
  }
}

class GoToCheckoutProcess extends StatelessWidget {
  const GoToCheckoutProcess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Go to Onboarding Process'),
              onPressed: () {
                Get.to(const OnboardingScreen());
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Go to Revenue Screen'),
              onPressed: () {
                Get.to(OnboardingContinuationScreen());
              },
            ),
            ElevatedButton(
              child: const Text('Go to Resturant screen'),
              onPressed: () {
                Get.to(ResturantScreens());
              },
            ),
          ],
        ),
      ),
    );
  }
}
