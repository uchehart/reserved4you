import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/other_widgets_for_checkout_form_screen.dart';
import 'checkout_order_confirmation.dart';

class CheckoutFormScreen extends StatefulWidget {
  const CheckoutFormScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutFormScreen> createState() => _CheckoutFormScreenState();
}

class _CheckoutFormScreenState extends State<CheckoutFormScreen> {
  String s = '';

  movetoOtherScreens() {
    if (s.isEmpty) {
      setState(() {
        s = '1';
      });
      print('s is empty');
    } else if (s == '1') {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const CheckoutOrderConfirmationScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
          onTap: () {
            movetoOtherScreens();
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
              child: Center(
                child: Text(
                  s.isNotEmpty
                      ? 'Proceed To Billing Detail'
                      : "Weiter zurZahlung",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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
        leadingWidth: 40,
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
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 395,
            height: 123.57,
            padding: const EdgeInsets.only(top: 25, left: 30, right: 30),
            color: const Color(0xfffdf5ef),
            child: Row(
              children: [
                checkoutCircles(
                  textlabel: 'Booking Summary',
                ),
                checkoutCircles(textlabel: 'Booking Summary'),
                checkoutCircles(textlabel: 'Booking Summary', isLast: true),
              ],
            ),
          ),
          const SizedBox(height: 28),
          if (s.isNotEmpty) DeliveryTimeWidget(),
          if (s.isEmpty) const FormFields(),
          // const SizedBox(height: 100),
        ],
      ),
    );
  }
}

Widget checkoutCircles({
  bool? isCurrentProcess = false,
  String? textlabel = '',
  bool? isPassed,
  bool? isLast = false,
}) {
  return Row(
    children: [
      Column(
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffe14942),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          SizedBox(
            width: 60.04,
            height: 28.13,
            child: Text(
              textlabel ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xffe14942),
                fontSize: 12,
                fontFamily: "Campton",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          if (!isLast!)
            Container(
              padding: const EdgeInsets.only(top: 25),
              height: 2,
              width: 52,
              color: const Color(0xffe14942),
              // child: Text('sss'),
            ),
        ],
      ),
    ],
  );
}
