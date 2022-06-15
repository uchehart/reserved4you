import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:reserved4you/Pages/Checkout/widgets/textfield_app_inputs.dart';

import '../controller/checkout_controller.dart';

class PaymentModel {
  final String? name;
  final String? svgImage;

  PaymentModel(this.name, this.svgImage);
}

Widget paymentTypeWidget({PaymentModel? data, bool istapped = false}) {
  return Container(
    width: 115.57,
    height: 70.37,
    decoration: BoxDecoration(
      color: istapped ? const Color(0xfffdf5ef) : Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: const Color(0xff9e9e9e),
        width: 1,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(data!.svgImage!, height: 21),
        const SizedBox(
          height: 13,
        ),
        Text(
          data.name ?? '',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: "Campton",
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}

class DeliveryTimeWidget extends StatelessWidget {
  DeliveryTimeWidget({Key? key}) : super(key: key);

  final ctr = Get.put(CheckoutController());

  List amount = [1.0, 2.0, 32.3, 4.4, 5.5, 6.3, 74, 8, 9, 10];
  List<PaymentModel> paymentTypes = [
    PaymentModel(
        'Master Card', 'assets/images/Checkout Screens/masterCard.svg'),
    PaymentModel('Visa Card', 'assets/images/Checkout Screens/Visa.svg'),
    PaymentModel('Klarna', 'assets/images/Checkout Screens/klam.svg'),
    PaymentModel('Paypal', 'assets/images/Checkout Screens/logos_paypal.svg'),
    PaymentModel(
        'Cash On Venue', 'assets/images/Checkout Screens/cash-bag.svg'),
    PaymentModel('Apple Pay', 'assets/images/Checkout Screens/applePay.svg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 480,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Text(
              "Delivery Time",
              style: TextStyle(
                color: Color(0xffe14942),
                fontSize: 20,
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  width: 170.12,
                  height: 51.27,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xfff9f9fb),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
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
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 52,
                  width: 160,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xffe14942),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)))),
                      child: const Text('ASAP')),
                )
              ],
            ),
            const SizedBox(
              height: 23,
            ),
            const Text(
              "Tip",
              style: TextStyle(
                color: Color(0xffe14942),
                fontSize: 20,
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "Send a little token of thanks by tipping to delivery partner.\nwho delivering your meal today",
              style: TextStyle(
                color: Color(0xff8d8d8d),
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            SizedBox(
              height: 51,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: amount.length,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          ctr.selectTipMethod(amount[index].toString());
                        },
                        child: Obx(
                          () => selectTipWidget(
                              amount: amount[index].toString(),
                              isSelected: ctr.selectTip.value ==
                                  amount[index].toString()),
                        ),
                      )),
            ),
            const SizedBox(
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
                      color: const Color(0xffe14942),
                      width: 8,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Automatically add this tip for future orders",
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 11,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 23,
            ),
            const Text(
              "Voucher",
              style: TextStyle(
                color: Color(0xffe14942),
                fontSize: 20,
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const AppInput(
              hintText: 'Enter voucher',
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 362,
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
                const Divider(
                  height: 2,
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
            const SizedBox(
              height: 33,
            ),
            const Text(
              "Complete Payment",
              style: TextStyle(
                color: Color(0xffe14942),
                fontSize: 20,
                fontFamily: "Campton",
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(), // new line
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.3,
                    crossAxisSpacing: 6),
                itemCount: paymentTypes.length,
                itemBuilder: (BuildContext ctx, index) {
                  return GestureDetector(
                      onTap: () {
                        ctr.selectedPaymentMethod(
                          paymentTypes[index].name.toString(),
                        );
                      },
                      child: Obx(
                        () => paymentTypeWidget(
                            data: paymentTypes[index],
                            istapped: ctr.selectedPaymentMethod.value ==
                                paymentTypes[index].name.toString()),
                      ));
                }),
            const SizedBox(
              height: 17,
            ),
            const AppInput(
              hintText: 'Card Number',
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppInput(
                  width: 170,
                  hintText: '(MM/YYYY)Exp ...',
                ),
                AppInput(
                  width: 170,
                  hintText: 'CVV',
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  width: 25.22,
                  height: 24.13,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffd9d9d9),
                      width: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Save Card For Next Payment",
                  style: TextStyle(
                    color: Color(0xff8d8d8d),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 41.22,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: const Color(0xfff9f9fb),
              ),
              child: Row(
                children: const [
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
            const SizedBox(
              height: 350,
            ),
          ],
        ));
  }

  Widget selectTipWidget({String amount = '', bool isSelected = false}) {
    return !isSelected
        ? Container(
            width: 63.04,
            height: 51.27,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xfff9f9fb),
            ),
            child: Center(
              child: Text(
                "${amount.toString()}€",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xff8d8d8d),
                  fontSize: 15,
                ),
              ),
            ),
          )
        : Container(
            margin: const EdgeInsets.only(right: 20),
            child: Stack(
              children: [
                Container(
                  width: 63.04,
                  height: 51.27,
                  margin: const EdgeInsets.only(top: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xffe14942),
                  ),
                  child: Center(
                    child: Text(
                      "${amount.toString()}€",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 21.01,
                    height: 20.11,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xffe14942),
                        width: 1,
                      ),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.close,
                      size: 20,
                      color: Color(0xffe14942),
                    ),
                  ),
                )
              ],
            ),
          );
  }
}

class FormFields extends StatelessWidget {
  const FormFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          const Text(
            "kontaktdaten",
            style: TextStyle(
              color: Color(0xffe14942),
              fontSize: 20,
              fontFamily: "Campton",
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
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
          const SizedBox(
            height: 14,
          ),
          const AppInput(
            hintText: 'Email address',
          ),
          const SizedBox(
            height: 14,
          ),
          const AppInput(
            hintText: 'Phone number',
          ),
          const SizedBox(
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
                    children: const [
                      Text(
                        "Old addres",
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
          const SizedBox(
            height: 14,
          ),
          Row(
            children: const [
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
          const SizedBox(
            height: 14,
          ),
          const AppInput(
            hintText: 'Write your note about delivery (Optional)...',
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
