import 'package:flutter/material.dart';

import 'entry_checkout_screen.dart';
// ignore_for_file: prefer_const_constructors
class DeliveryTimeWidget extends StatelessWidget {
  DeliveryTimeWidget({Key? key}) : super(key: key);

  List amount = [1.0, 2.0, 32.3, 4.4, 5.5, 6.3, 74, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 800,
        child: ListView(
          children: [
            Text(
              "Delivery Time",
              style: TextStyle(
                color: Color(0xffe14942),
                fontSize: 20,
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  width: 170.12,
                  height: 51.27,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color(0xfff9f9fb),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery time",
                        style: TextStyle(
                          color: Color(0xff8d8d8d),
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_drop_down_outlined)
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 52,
                  width: 160,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffe14942),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)))),
                      child: Text('ASAP')),
                )
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              "Tip",
              style: TextStyle(
                color: Color(0xffe14942),
                fontSize: 20,
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "Send a little token of thanks by tipping to delivery partner.\nwho delivering your meal today",
              style: TextStyle(
                color: Color(0xff8d8d8d),
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 13,
            ),
            SizedBox(
              height: 51,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: amount.length,
                  itemBuilder: (context, index) => Container(
                        width: 63.04,
                        height: 51.27,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color(0xfff9f9fb),
                        ),
                        child: Center(
                          child: Text(
                            "${amount[index]}€",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff8d8d8d),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      )),
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              children: [
                Container(
                  width: 12.61,
                  height: 12.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Color(0xffe14942),
                      width: 8,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Automatically add this tip for future orders",
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 11,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              "Voucher",
              style: TextStyle(
                color: Color(0xffe14942),
                fontSize: 20,
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            AppInput(
              hintText: 'Enter voucher',
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 362,
              height: 147,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xffd9d9d9),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x0c000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
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
                      Spacer(),
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
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      const Text(
                        'Lieferkosten',
                        style: TextStyle(
                          color: Color(0xff9e9e9e),
                          fontSize: 16,
                          fontFamily: "Campton",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      const Text(
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
                SizedBox(
                  height: 19,
                ),
                const Divider(
                  height: 2,
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
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
                      Spacer(),
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
                SizedBox(
                  height: 20,
                ),
              ]),
            ),
            SizedBox(
              height: 33,
            ),
            Text(
              "Complete Payment",
              style: TextStyle(
                color: Color(0xffe14942),
                fontSize: 20,
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 41.22,
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: Color(0xfff9f9fb),
              ),
              child: Row(
                children: [
                  Text(
                    "By cintinuing you agree to ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Booking Condition",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 402,
              height: 77.65,
              decoration: BoxDecoration(
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
                  "Bestatigen",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "Campton",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class FormFields extends StatelessWidget {
  const FormFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          Text(
            "kontaktdaten",
            style: TextStyle(
              color: Color(0xffe14942),
              fontSize: 20,
              fontFamily: "Campton",
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              AppInput(
                width: 150,
                hintText: 'First name',
              ),
              SizedBox(
                width: 20,
              ),
              AppInput(
                width: 150,
                hintText: 'Last name',
              )
            ],
          ),
          SizedBox(
            height: 14,
          ),
          AppInput(
            hintText: 'Email address',
          ),
          SizedBox(
            height: 14,
          ),
          AppInput(
            hintText: 'Phone number',
          ),
          SizedBox(
            height: 14,
          ),
          AppInput(
            hintText: 'Address',
            suffixIcon: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 87,
                height: 32,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffe14942),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(color: Colors.red))),
                  child: Row(
                    children: [
                      Text(
                        "Old address",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xfffefeff),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            children: [
              AppInput(
                width: 150,
                hintText: 'Postal code',
              ),
              SizedBox(
                width: 20,
              ),
              AppInput(
                width: 150,
                hintText: 'City',
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          AppInput(
            hintText: 'Write your note about delivery (Optional)...',
          ),
        ],
      ),
    );
  }
}
