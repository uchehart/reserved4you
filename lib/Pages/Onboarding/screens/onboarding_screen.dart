import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingScreen extends StatefulWidget {
  static String path = '/StartUpScreen';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List documentTypes = [
    [
      "Wahle deinen\nbevorzugten Bereich",
      "Buche deine Termine und verwalte alles\neinfach in deinem Profil.",
      "assets/images/onboarding/onboarding1.svg"
    ],
    [
      "Buche Termine\nrund um die Uhr",
      "Buche deine Termine, wann und wo du\nmochtest.",
      "assets/images/onboarding/onboarding2.svg"
    ],
    [
      "Sichere Zahlung &\nBuchungsbestatigung",
      "Zahle sicher, erhalte deine\nBuchungsbestatigung",
      "assets/images/onboarding/onboarding3.svg"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CarouselSlider(
              items: documentTypes
                  .map((e) => startUpLayout(
                      title: e[0], subText: e[1], svgImage: e[2].toString()))
                  .toList(),
              carouselController: _controller,
              options: CarouselOptions(
                  enableInfiniteScroll: false,
                  viewportFraction: 0.98,
                  height: 800,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
          const SizedBox(height: 8),
          // Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: documentTypes.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                          width: _current == entry.key ? 40 : 12,
                          height: 6,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              color: _current == entry.key
                                  ? const Color(0xffe14942)
                                  : const Color(0xffc4c4c4))),
                    );
                  }).toList(),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 114,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x33e14942),
                          blurRadius: 54.73,
                          offset: Offset(0, 21.89),
                        ),
                      ],
                      color: const Color(0xffe14942),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Weiter",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "Campton",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 11),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Container startUpLayout(
      {String title = '', String subText = '', String svgImage = ''}) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: SizedBox(height: 470, child: SvgPicture.asset(svgImage))),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                subText,
                style: const TextStyle(
                  color: Color(0xffaeaaaa),
                  fontSize: 16,
                  fontFamily: "Campton",
                  fontWeight: FontWeight.w700,
                ),
              ))
        ],
      ),
    );
  }
}
