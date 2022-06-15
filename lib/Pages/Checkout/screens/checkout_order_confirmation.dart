import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'checkout_entry_screen.dart';

class CheckoutOrderConfirmationScreen extends StatelessWidget {
  const CheckoutOrderConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
          onTap: () {
            Get.offAll(const CheckoutHomeScreen());
          },
          child: Container(
              width: 402,
              height: 77.65,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(13),
                  topRight: Radius.circular(13),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
                color: Color(0xffe14942),
              ),
              child: const Center(
                child: Text(
                  "Bestatigen",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "Campton",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ))),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Order Confirmation",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff333333),
            fontSize: 18,
            fontFamily: "Campton",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        children: [
          checkoutBanner(),
          const SizedBox(height: 26),
          otherCheckoutDetails(
              labelText: 'Restaurant Name', isResturantName: true),
          const SizedBox(height: 12),
          otherCheckoutDetails(
              labelText: 'Payment Method', isPaymentMethod: true),
          const SizedBox(height: 12),
          otherCheckoutDetails(labelText: 'Amount', isAmount: true),
          const SizedBox(height: 14),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
            child: Text(
              "Buchungsdetails",
              style: TextStyle(
                color: Color(0xff7b7e86),
                fontSize: 24,
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          detailsWithImage(),
          const SizedBox(height: 38),
          finalPriceDetail(),
          const SizedBox(height: 38),
        ],
      ),
    );
  }

  Container finalPriceDetail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      height: 59.74,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xfffdf5ef),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: "Bezahlt ",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: "50.00€",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xffe14942),
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
          ])),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Zahlunsmethode",
                style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: 12,
                  fontFamily: "Campton",
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 7,
              )
            ],
          )
        ],
      ),
    );
  }

  Container detailsWithImage() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: 366.62,
      height: 117.49,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff7b7e86),
          width: 0.4,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(9),
          topRight: Radius.circular(9),
          bottomLeft: Radius.circular(9),
          bottomRight: Radius.circular(9),
        ),
        color: const Color(0xfff9f9fb),
      ),
      child: Stack(children: [
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Row(
              children: [
                Container(
                  width: 138.29,
                  height: 95.02,
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x0c000000),
                        blurRadius: 20,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Image.asset(
                      'assets/images/Checkout Screens/testImage.png'),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Chicken Pizza",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Cheese, canned black beans",
                      style: TextStyle(
                        color: Color(0xff9e9e9e),
                        fontSize: 10,
                      ),
                    ),
                  ],
                )
              ],
            )),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 27.87,
            height: 24.52,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(9),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(0),
              ),
              color: Color(0xffe14942),
            ),
            child: const Center(
              child: Text(
                "3",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }

  Padding otherCheckoutDetails(
      {String labelText = '',
      bool isAmount = false,
      bool isResturantName = false,
      bool isPaymentMethod = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 57.21,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xfff9f9fb),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                labelText,
                style: const TextStyle(
                  color: Color(0xffa0a0a0),
                  fontSize: 15,
                  fontFamily: "Campton",
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (isResturantName)
                const Text(
                  "893 Ryotei",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "Campton",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              if (isAmount)
                const Text(
                  "15 £",
                  style: TextStyle(
                    color: Color(0xffe14942),
                    fontSize: 15,
                    fontFamily: "Campton",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              if (isPaymentMethod)
                SvgPicture.asset(
                    'assets/images/Checkout Screens/masterCard.svg')
            ],
          ),
        ),
      ),
    );
  }

  SizedBox checkoutBanner() {
    return SizedBox(
      height: 200,
      // color: Colors.red,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 16, right: 16),
              width: double.infinity,
              height: 190.71,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff5dc761).withOpacity(0.1),
              ),
              child: Column(
                children: const [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Buchung Bestatight!",
                    style: TextStyle(
                      color: Color(0xff5dc761),
                      fontSize: 24,
                      fontFamily: "Campton",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Gluckwunsch! Dein Termin wurde\nerfolgreich gebucht",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 55,
                height: 54,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xff5DC862)),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 258.35,
                height: 42.91,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xffeffaf0),
                    width: 2,
                  ),
                  color: const Color(0xfffdfdfd),
                ),
                child: Center(
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: "Deine Buchungs - ID:",
                      style: TextStyle(fontSize: 14, color: Colors.black45),
                    ),
                    TextSpan(
                      text: " #45",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ])),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
