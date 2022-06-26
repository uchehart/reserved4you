import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Checkout/widgets/textfield_app_inputs.dart';
import '../../controller/resturant_controller.dart';

class BewtungenWidgets extends StatelessWidget {
  BewtungenWidgets({Key? key}) : super(key: key);
  final ctr = Get.put(ResturantController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xfffdf5ef),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 252,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        padding: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            color: const Color(0xffFCBE56),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Obx(
                              () => Text(
                                '${ctr.starRatingNumber.value + 1}.0/5.0',
                                style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                  5,
                                  (index) => Obx(
                                        () => GestureDetector(
                                            onTap: () {
                                              if (index == 0 &&
                                                  ctr.starRatingNumber.value ==
                                                      index) {
                                                ctr.starRatingNumber.value = -1;
                                                return;
                                              }
                                              ctr.starRatingNumber(index);
                                            },
                                            child: starRatingSelector(
                                                isSelected:
                                                    ctr.starRatingNumber >=
                                                        index)),
                                      )),
                            ),
                            const Text(
                              '(0)Bewtungen',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 0,
                          left: 0,
                          bottom: 0,
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 52.13,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text(
                                  'Feedback geben',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
                textRow(rating: '0.0', text: 'Service and Mitarbeit'),
                textRow(rating: '0.0', text: 'Ambiente'),
                textRow(rating: '0.0', text: 'Preis-Leistung'),
                textRow(rating: '0.0', text: 'Wartezeit'),
                textRow(rating: '0.0', text: 'Atmostphere'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text(
                'Bewertungen',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "Campton",
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              Container(
                height: 42,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.brown[400]),
                child: Image.asset(
                  'assets/images/onboarding/filter.png',
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 42,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xff7b7b7b),
                    width: 1,
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Bewertungen',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "Campton",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.filter_list,
                      color: Colors.grey,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const AppInput(
            hintText: 'Suche nach Mitarbeitern',
            prefixIcon: Icon(Icons.search),
          )
        ],
      ),
    );
  }
}

Container textRow({String rating = '', String text = ''}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      children: [
        Text(
          "$rating.0/5",
          style: TextStyle(
            color: const Color(0xffe14942).withOpacity(0.5),
            fontSize: 16,
            fontFamily: "Campton",
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xffaeaaaa),
            fontSize: 16,
            fontFamily: "Campton",
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}

SizedBox starRatingSelector({bool isSelected = false}) {
  return SizedBox(
    width: 45,
    height: 45,
    child: Icon(
      Icons.star_rounded,
      size: 40,
      color: isSelected ? Colors.white : const Color(0xffa4a5a7),
    ),
  );
}
