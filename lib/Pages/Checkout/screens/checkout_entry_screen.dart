// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'checkout_form_screen.dart';

class CheckoutHomeScreen extends StatelessWidget {
  const CheckoutHomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: GestureDetector(
            onTap: () {
              Get.to(CheckoutFormScreen());
            },
            child: Container(
                width: double.infinity,
                height: 77.65,
                padding: EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13),
                    topRight: Radius.circular(13),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  color: Color(0xffe14942),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Checkout',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Campton",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Total",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "\$28.00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: "Campton",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ))),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 40,
          actions: [
            Container(
                width: 33.71,
                height: 32.20,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 20,
                      offset: Offset(0, 8),
                    ),
                  ],
                  color: Color(0xffe14942),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ))
          ],
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              width: 33.62,
              height: 32.17,
              margin: const EdgeInsets.only(left: 10),
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
                  child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 20,
              )),
            ),
          ),
          title: const Text(
            "Checkout Process",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff333333),
              fontSize: 18,
              fontFamily: "Campton",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 172.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xffd9d9d9),
                  width: 1,
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
              child: Column(children: [
                Container(
                  width: double.infinity,
                  height: 115,
                  padding: EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(9),
                      topRight: Radius.circular(9),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    color: Color(0xfff9f9fb),
                  ),
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                          'assets/images/Checkout Screens/testImage.png'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Chicken Pizza",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Campton",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Cheese, canned black beans",
                          style: TextStyle(
                            color: Color(0xff9e9e9e),
                            fontSize: 10,
                          ),
                        )
                      ],
                    )
                  ]),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                          'assets/images/Checkout Screens/chat.svg'),
                      Container(
                        width: 108,
                        height: 35,
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xffb80f0a),
                            width: 1,
                          ),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.remove,
                              color: Color(0xffb80f0a),
                            ),
                            Text("02",
                                style: TextStyle(
                                  color: Color(0xFFB80F0A),
                                )),
                            Icon(
                              Icons.add,
                              color: Color(0xffb80f0a),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(height: 20),
            Container(
             
              height: 147,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xffd9d9d9),
                  width: 1,
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
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Zwischensumme',
                        style: TextStyle(
                          color: Color(0xff9e9e9e),
                          fontSize: 16,
                          fontFamily: "Campton",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        '28.00\$',
                        style: TextStyle(
                          color: Color(0xff9e9e9e),
                          fontSize: 16,
                          fontFamily: "Campton",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: const [
                      Text(
                        'Lieferkosten',
                        style: TextStyle(
                          color: Color(0xff9e9e9e),
                          fontSize: 16,
                          fontFamily: "Campton",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '3.00\$',
                        style: TextStyle(
                          color: Color(0xff9e9e9e),
                          fontSize: 16,
                          fontFamily: "Campton",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                SizedBox(
                  height: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: const [
                          Colors.white,
                          Colors.black,
                          Colors.white
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Gesamt',
                        style: TextStyle(
                          color: Color(0XFFE14942),
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        '31.00\$',
                        style: TextStyle(
                          color: Color(0XFFE14942),
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ]),
            ),
          ]),
        ));
  }
}
