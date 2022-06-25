import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../controller/onbording_controller.dart';

class OnboardingContinuationScreen extends StatelessWidget {
  OnboardingContinuationScreen({Key? key}) : super(key: key);

  final ctr = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
              width: 95,
              height: 23,
              child: Image.asset('assets/images/Profile/Logo_Home.png')),
          const SizedBox(
            height: 14,
          ),
          const Center(
            child: Text(
              "Wahle deinen Bereich",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          GestureDetector(
            onTap: () => ctr.pickRevenue('Gastronomy'),
            child: Obx(
              () => buildCard(
                isSelected: ctr.pickRevenue.value == 'Gastronomy',
                title: 'Gastronomy',
                svgImg: 'assets/images/onboarding/onboarding2.svg',
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          GestureDetector(
              onTap: () => ctr.pickRevenue('Kosmetik'),
              child: Obx(() => buildCard(
                    isSelected: ctr.pickRevenue.value == 'Kosmetik',
                    title: 'Kosmetik',
                    svgImg: 'assets/images/onboarding/onboarding2.svg',
                  ))),
          buildCard(
            title: 'Coming Soon!',
            svgImg: 'assets/images/onboarding/onboarding2.svg',
          ),
          buildCard(
            title: 'Coming Soon!',
            svgImg: 'assets/images/onboarding/onboarding2.svg',
          ),
        ],
      ),
    );
  }
}

Widget buildCard(
    {String svgImg = '', String title = '', bool isSelected = false}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    height: 161,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 142,
          padding:
              const EdgeInsets.only(left: 15, top: 18, bottom: 18, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isSelected
                  ? const Color(0xffe14942)
                  : const Color(0xffd9d9d9),
              width: 1,
            ),
            color: isSelected ? Colors.white : const Color(0xfff9f9fb),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isSelected
                  ? SvgPicture.asset(
                      svgImg,
                      height: 155,
                      width: 106,
                      fit: BoxFit.fill,
                    )
                  : ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      child: Container(
                        width: 155.60,
                        height: 106.50,
                        decoration: const BoxDecoration(),
                        padding: const EdgeInsets.only(right: 51),
                        child: SvgPicture.asset(
                          svgImg,
                          height: 155,
                          width: 106,
                          fit: BoxFit.fill,
                        ),
                      )),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: title.contains('Coming')
                      ? const Color(0xffd9d9d9)
                      : isSelected
                          ? const Color(0xffe14942)
                          : const Color(0xff7b7b7b),
                  fontSize: 18,
                  fontFamily: "Campton",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.44,
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Align(
              alignment: Alignment.center,
              child: Container(
                // width: 100,

                decoration: const BoxDecoration(
                  color: Colors.white,
                ),

                padding: const EdgeInsets.only(),
                child: isSelected
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 1,
                            width: 20,
                            child: Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x0c000000),
                                    blurRadius: 20,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color(0xffe14942), Colors.white],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xffe14942),
                                width: 6,
                              ),
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 1,
                            width: 20,
                            child: Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x0c000000),
                                    blurRadius: 20,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.white,
                                    Color(0xffe14942),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xff7b7b7b),
                            width: 1,
                          ),
                          color: Colors.white,
                        ),
                      ),
              )),
        )
      ],
    ),
  );
}
