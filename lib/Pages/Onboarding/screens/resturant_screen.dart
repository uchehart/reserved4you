import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:reserved4you/Pages/Onboarding/controller/resturant_controller.dart';
import 'package:reserved4you/Pages/Onboarding/widgets/portflio_tab_widgets/portfolio_tab_widgets.dart';

import '../widgets/Bewtungen_widgets/bewtungen_widgets.dart';

class ResturantScreens extends StatelessWidget {
  ResturantScreens({Key? key}) : super(key: key);

  final ctr = Get.put(ResturantController());
  final List tabName = ['Menu', 'Allgermein', 'Portfolio', 'Bewtungen'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        backgroundAndAvatarImages(),
        const SizedBox(
          height: 21,
        ),
        const Text(
          "Skykitchen",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontFamily: "Campton",
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        const Text(
          "Landsberger Allee 106 im andel’s Hotel Berline,\n10369 Berlin",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff455a64),
            fontSize: 14,
            fontFamily: "Campton",
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              List.generate(5, (index) => starRating(isSelected: 3 > index)),
        ),
        const SizedBox(
          height: 10,
        ),
        RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(children: [
              TextSpan(
                text: '(',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              TextSpan(
                text: ' 3.1 ',
                style: TextStyle(fontSize: 14, color: Color(0xfffcbe56)),
              ),
              TextSpan(
                text: '| 105) Reviews',
                style: TextStyle(fontSize: 14, color: Colors.black),
              )
            ])),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 207,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: const Color(0xff7b7b7b),
                    width: 1,
                  ),
                  color: Colors.white,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Center(
                        child: Icon(
                          Icons.access_time,
                          color: Color(0xff455a64),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Do (10:00 - 20:00)",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff455a64),
                          fontSize: 15,
                          fontFamily: "Campton",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ])),
            const SizedBox(width: 10),
            Container(
              width: 126,
              height: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: const Color(0xff008108),
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.only(top: 10),
              child: const Text(
                "Open",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff008108),
                  fontSize: 15,
                  fontFamily: "Campton",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 1,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.white, Color(0xff9e9e9e), Colors.white],
          )),
        ),
        const SizedBox(
          height: 13,
        ),
        SizedBox(
          height: 44,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: const Color(0xffe0e0e0),
                    width: 1,
                  ),
                ),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 10,
                ),
                child: Obx(
                  () => Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                        tabName.length,
                        (index) => GestureDetector(
                          onTap: () => ctr.selectedTabName(tabName[index]),
                          child: selectTabMenu(
                              tabName: tabName[index],
                              isSelected: ctr.selectedTabName.toLowerCase() ==
                                  tabName[index].toString().toLowerCase()),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 13,
        ),

        ///You can add a bool here and use  ctr.selectedTabName.value == tabName, to switch between other screens
        Obx(
          () => ctr.selectedTabName.value == tabName[1]
              ? AllegerimWidget()
              : ctr.selectedTabName.value == tabName[2]
                  ? PortfolioTabWidgets()
                  : ctr.selectedTabName.value == tabName[3]
                      ? BewtungenWidgets()
                      : AllegerimWidget(),
        )
      ]),
    );
  }

  Widget selectTabMenu({bool isSelected = false, String tabName = ''}) {
    return isSelected
        ? Container(
            height: 38,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: const Color(0xffe14942),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Text(
              tabName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        : Row(
            children: [
              Text(
                tabName,
                style: const TextStyle(
                  color: Color(0xff9e9e9e),
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                width: 12,
              )
            ],
          );
  }

  SizedBox backgroundAndAvatarImages() {
    return SizedBox(
      height: 350 + 62,
      child: Stack(children: [
        Container(
          height: 350,
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/onboarding/background_img.png',
                  ))),
        ),
        Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 42,
                  height: 42,
                  padding: const EdgeInsets.only(left: 12, right: 15),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 20,
                        offset: Offset(0, 8),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: const Center(child: Icon(Icons.arrow_back_ios)),
                ),
                Obx(
                  () => Row(
                    children: List.generate(
                        tabName.length,
                        (index) => ctr.selectedTabName.toLowerCase() ==
                                tabName[index].toString().toLowerCase()
                            ? Container(
                                width: 44,
                                height: 10,
                                padding: const EdgeInsets.all(2),
                                margin: const EdgeInsets.only(right: 6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    color: Colors.white),
                              )
                            : Opacity(
                                opacity: 0.60,
                                child: Container(
                                  width: 12,
                                  height: 6,
                                  margin: const EdgeInsets.only(right: 6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                  ),
                ),
                Container(
                    width: 42,
                    height: 42,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 20,
                          offset: Offset(0, 8),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Icon(Icons.favorite_border),
                    ))
              ],
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 124,
              height: 124,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(62),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/onboarding/background_img.png',
                    )),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 20,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              // child: const FlutterLogo(size: 124),
            ),
          ),
        )
      ]),
    );
  }
}

class AllegerimWidget extends StatelessWidget {
  AllegerimWidget({Key? key}) : super(key: key);
  final List days = [
    'Monday',
    'Tuesday',
    'Wednesdy',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  final ctr = Get.find<ResturantController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          color: const Color(0xfff9f9fb),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Description",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "Campton",
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 365,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: TextStyle(
                    color: Color(0xff455a64),
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 126,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: const Color(0xffe14942),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Read more",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffe14942),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward,
                      size: 16,
                      color: Color(0xffe14942),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(18),
          color: const Color(0xfff9f9fb),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Facilities",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "Campton",
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  facilitiesWidgets(
                      text: 'For gentlemen',
                      color: const Color(0xff007aff),
                      widget: const Icon(
                        Icons.male,
                        size: 30,
                        color: Colors.blue,
                      )),
                  facilitiesWidgets(
                      text: 'Only Ladies',
                      color: const Color(0xfffa7b86),
                      widget: const Icon(
                        Icons.female,
                        size: 30,
                        color: Color(0xfffa7b86),
                      ))
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  facilitiesWidgets(
                      text: 'Free Wifi',
                      color: const Color(0xffe38601),
                      widget: const Icon(
                        Icons.signal_wifi_4_bar_lock_outlined,
                        size: 30,
                        color: Color(0xffe38601),
                      )),
                  facilitiesWidgets(
                      text: 'Pets Allowed',
                      color: const Color(0xff2baba1),
                      widget: const Icon(
                        Icons.pets_outlined,
                        size: 30,
                        color: Color(0xff2baba1),
                      ))
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
            padding: const EdgeInsets.all(18),
            color: const Color(0xfff9f9fb),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Location by Map",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: "Campton",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/images/onboarding/map.png',
                  width: double.infinity,
                  height: 263,
                )
              ],
            )),
        const SizedBox(
          height: 8,
        ),
        disctrictKitchenAndContactWidgets(
          title: 'District',
          subtext: 'Berlin',
          widget: Container(
            width: 41,
            height: 43,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffec8984).withOpacity(0.1),
            ),
            child: const Center(
                child: Icon(
              Icons.location_on_outlined,
              color: Color(0xffec8984),
            )),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        disctrictKitchenAndContactWidgets(
            title: 'Kitchen',
            subtext: 'Italian Pizza, Burger, Pasta',
            widget: Container(
              width: 41,
              height: 43,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff007aff).withOpacity(0.1),
              ),
              child: Center(
                  child: SvgPicture.asset(
                'assets/images/onboarding/food.svg',
                color: const Color(0xff007aff),
              )),
            )),
        const SizedBox(
          height: 8,
        ),
        disctrictKitchenAndContactWidgets(
            title: 'Contact',
            widget: Container(
              width: 105,
              height: 43,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffe14942)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Center(
                      child: Icon(
                    Icons.call_outlined,
                    color: Colors.white,
                  )),
                  Text(
                    "Call Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            )),
        const SizedBox(
          height: 8,
        ),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            color: const Color(0xfff9f9fb),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xffd9d9d9),
                    width: 0.10,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x0c000000),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Obx(
                  () => Column(
                      children: days
                          .map((e) => GestureDetector(
                                onTap: () {
                                  ctr.selectedDate(e);
                                },
                                child: Container(
                                  color: ctr.selectedDate == e
                                      ? const Color(0xfff6f6f8)
                                      : Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        e.toString(),
                                        style: TextStyle(
                                          color: ctr.selectedDate == e
                                              ? const Color(0xffe14942)
                                              : const Color(0xff455a64),
                                          fontSize: 14,
                                          fontFamily: "Campton",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "09:00 - 23:00",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: ctr.selectedDate == e
                                              ? const Color(0xffe14942)
                                              : const Color(0xff455a64),
                                          fontSize: 14,
                                          fontFamily: "Campton",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ))
                          .toList()),
                ),
              ),
            )),
        const SizedBox(
          height: 8,
        ),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            color: const Color(0xfff9f9fb),
            child: Container(
              padding: const EdgeInsets.only(
                  left: 11, right: 19, top: 16, bottom: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xffd9d9d9),
                  width: 0.10,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0c000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              width: 25,
                              height: 20,
                              child: SvgPicture.asset(
                                'assets/images/onboarding/cart.svg',
                                width: 15,
                                height: 15,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Minimum Order Value",
                            style: TextStyle(
                              color: Color(0xff455a64),
                              fontSize: 14,
                              fontFamily: "Campton",
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "100",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xff455a64),
                          fontSize: 14,
                          fontFamily: "Campton",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 25,
                            height: 20,
                            child: SvgPicture.asset(
                              'assets/images/onboarding/clock.svg',
                              width: 15,
                              height: 15,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Delivery Costs",
                            style: TextStyle(
                              color: Color(0xff455a64),
                              fontSize: 14,
                              fontFamily: "Campton",
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "3.00 €",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xff455a64),
                          fontSize: 14,
                          fontFamily: "Campton",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              width: 25,
                              height: 20,
                              child: SvgPicture.asset(
                                'assets/images/onboarding/delivery.svg',
                                width: 15,
                                height: 15,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Average Delivery Time",
                            style: TextStyle(
                              color: Color(0xff455a64),
                              fontSize: 14,
                              fontFamily: "Campton",
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "20 - 30 mins",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xff455a64),
                          fontSize: 14,
                          fontFamily: "Campton",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )),
        const SizedBox(
          height: 8,
        ),
        disctrictKitchenAndContactWidgets(
          title: 'Website',
          subtext: 'www.gastronomy.com',
          widget: Container(
            width: 41,
            height: 43,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffec8984).withOpacity(0.1),
            ),
            child: const Center(
                child: Icon(
              Icons.language_rounded,
              color: Color(0xffec8984),
            )),
          ),
        ),
      ],
    );
  }

  Container disctrictKitchenAndContactWidgets(
      {String title = '',
      String subtext = '',
      Widget widget = const SizedBox()}) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        color: const Color(0xfff9f9fb),
        child: Container(
          height: 60,
          padding: const EdgeInsets.only(
            left: 20,
            right: 6,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color(0xffd9d9d9),
              width: 0.10,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x0c000000),
                blurRadius: 20,
                offset: Offset(0, 4),
              ),
            ],
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              subtext.isNotEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: subtext.isEmpty
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xff455a64),
                            fontSize: 14,
                            fontFamily: "Campton",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          subtext,
                          style: const TextStyle(
                            color: Color(0xff7b7b7b),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    )
                  : Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xff455a64),
                        fontSize: 14,
                        fontFamily: "Campton",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              widget
            ],
          ),
        ));
  }

  Container facilitiesWidgets(
      {String? text,
      String? icon,
      Color? color,
      Widget widget = const SizedBox()}) {
    return Container(
      width: 175,
      height: 51,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xffd9d9d9),
          width: 0.10,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0c000000),
            blurRadius: 20,
            offset: Offset(0, 4),
          ),
        ],
        color: Colors.white,
      ),
      child: Row(children: [
        const SizedBox(
          width: 20,
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xff455a64),
            fontSize: 14,
            fontFamily: "Campton",
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Container(
          margin: const EdgeInsets.only(right: 5),
          width: 41,
          height: 43,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color!.withOpacity(0.21),
          ),
          child: Center(child: widget),
        ),
      ]),
    );
  }
}

Container starRating({bool isSelected = false}) {
  return Container(
    width: 22.05,
    height: 22.05,
    margin: const EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      border: Border.all(
        color: isSelected ? const Color(0xfffcbe56) : const Color(0xffa4a5a7),
        width: 0.50,
      ),
    ),
    child: Icon(
      Icons.star_rounded,
      size: 18,
      color: isSelected ? const Color(0xfffcbe56) : const Color(0xffa4a5a7),
    ),
  );
}
