import 'package:flutter/material.dart';

class PortfolioTabWidgets extends StatelessWidget {
  PortfolioTabWidgets({Key? key}) : super(key: key);
  final List img = [
    'assets/images/onboarding/resturaant.jpeg',
    'assets/images/onboarding/resturaant.jpeg',
    'assets/images/onboarding/resturaant.jpeg',
    'assets/images/onboarding/resturaant.jpeg',
    'assets/images/onboarding/resturaant.jpeg',
    'assets/images/onboarding/resturaant.jpeg',
    'assets/images/onboarding/resturaant.jpeg',
    'assets/images/onboarding/resturaant.jpeg',
    'assets/images/onboarding/resturaant.jpeg',
    'assets/images/onboarding/resturaant.jpeg',
    'assets/images/onboarding/resturaant.jpeg',
    'assets/images/onboarding/resturaant.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        runSpacing: 20,
        spacing: 20,
        children: List.generate(
            img.length,
            (index) => ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      img[index],
                      height: 150,
                      width: size.width * 0.4,
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
      ),
    );
  }
}
