import 'package:flutter/material.dart';
import 'package:reserved4you/Pages/Checkout/screens/checkout_process.dart';

// ignore_for_file: prefer_const_constructors
class CheckoutEntryScreen extends StatelessWidget {
  const CheckoutEntryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
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
      body: ListView(
        children: [
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
          SizedBox(height: 28),
          // DeliveryTimeWidget(),
          FormFields(),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}

class AppInput extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final TextEditingController? controller;
  const AppInput({
    Key? key,
    this.height,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.controller,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 51.24,
      width: width ?? double.infinity,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          labelText: hintText ?? '',
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          filled: true,
          fillColor: Color(0xfff9f9fb),
          hintStyle: TextStyle(
            color: Color(0xff8d8d8d),
            fontSize: 15,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(14))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(14))),
        ),
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
