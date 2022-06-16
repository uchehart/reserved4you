import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserved4you/Pages/Checkout/controller/checkout_controller.dart';

import '../widgets/other_widgets_for_checkout_form_screen.dart';

class CheckoutFormScreen extends StatelessWidget {
  CheckoutFormScreen({Key? key}) : super(key: key);
  final ctr = Get.put(CheckoutController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
          onTap: () {
            ctr.movetoOtherScreens();
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
                  ctr.s.isNotEmpty
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
      body: Obx(
        () => Column(
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
                  checkoutCircles(textlabel: 'Booking Summary', isFirst: true),
                  checkoutCircles(
                    textlabel: 'Billing Details',
                    isCurrentProcess: ctr.isBillingDetailValid.value,
                  ),
                  checkoutCircles(
                      textlabel: 'Complete Payment',
                      isCurrentProcess: ctr.isCompletePayment.value,
                      isReached: ctr.isCompletePayment.value),
                ],
              ),
            ),

            const SizedBox(height: 28),
            if (ctr.s.isNotEmpty) DeliveryTimeWidget(),
            if (ctr.s.isEmpty) const FormFields(),
            // const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

Widget checkoutCircles({
  bool? isCurrentProcess = false,
  String? textlabel = '',
  bool? isReached = true,
  bool? isFirst = false,
}) {
  return Row(
    children: [
      Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          if (!isFirst!)
            Container(
              padding: const EdgeInsets.only(top: 25),
              height: 2,
              width: 52,
              color: !isReached!
                  ? const Color(0xffe2e0e1)
                  : const Color(0xffe14942),
              // child: Text('sss'),
            ),
        ],
      ),
      Column(
        children: [
          Container(
            width: 33.71,
            height: 32.15,
            decoration: !isReached!
                ? BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffc4c4c4),
                      width: 1,
                    ),
                  )
                : BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffe14942),
                      width: 11,
                    ),
                    color: isCurrentProcess!
                        ? Colors.white
                        : const Color(0xffe14942),
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
              style: TextStyle(
                color: !isReached
                    ? const Color(0xff9e9e9e)
                    : isCurrentProcess!
                        ? Colors.black
                        : const Color(0xffe14942),
                fontSize: 12,
                fontFamily: "Campton",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
