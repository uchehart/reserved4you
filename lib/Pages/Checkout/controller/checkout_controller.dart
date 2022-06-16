import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/checkout_order_confirmation.dart';

class CheckoutController extends GetxController {
  RxString selectedPaymentMethod = ''.obs;
  RxString selectTip = ''.obs;
  RxBool isBillingDetailValid = true.obs;
  RxBool isCompletePayment = false.obs;
  RxString s = ''.obs;
  RxString selectedCash = 'Suitable 23.00 €'.obs;
  List cashOnDelivery = [
    'Suitable 23.00 €',
    '25.00 €',
    '30.00 €',
    '28.00 €',
    '23.00 €'
  ];

  selectPaymentMethod(String id) {
    selectedPaymentMethod.value = id;

    if (id.toLowerCase() == 'Cash On Venue'.toLowerCase()) {
      showModalBottomSheet(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          context: Get.context!,
          builder: (context) => cashOnDeliveryModal());
    }
  }

  selectCash(String id) {
    selectedCash.value = id;
  }

  movetoOtherScreens() {
    if (s.isEmpty) {
      s.value = '1';
    } else if (s == '1') {
      Navigator.push(
        Get.context!,
        MaterialPageRoute(
            builder: (context) => const CheckoutOrderConfirmationScreen()),
      );
    }
    changeTransitionScreen();
  }

  selectTipMethod(String id) {
    if (selectTip.value != id) {
      selectTip.value = id;
    } else if (selectTip.value == id) {
      selectTip.value = '';
    }
  }

  changeTransitionScreen() {
    if (isBillingDetailValid.isTrue) {
      isBillingDetailValid.value = false;
      isCompletePayment.value = true;
    }
  }
}

Container cashOnDeliveryModal() {
  final ctr = Get.find<CheckoutController>();
  return Container(
    height: 286,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      boxShadow: const [
        BoxShadow(
          color: Color(0x26000000),
          blurRadius: 10,
          offset: Offset(0, -2),
        ),
      ],
      color: Colors.white,
    ),
    child: Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Container(
            width: 77,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xffebebeb),
            ),
          ),
        ),
        const SizedBox(
          height: 34,
        ),
        Flexible(
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.transparent, Color(0xff7b7b7b)],
              ).createShader(bounds);
            },
            child: ListView.builder(
              itemCount: ctr.cashOnDelivery.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () =>
                    ctr.selectCash(ctr.cashOnDelivery[index].toString()),
                child: Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 36,
                        padding: const EdgeInsets.only(left: 14, top: 10),
                        margin: const EdgeInsets.only(
                            bottom: 8, left: 16, right: 17),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ctr.cashOnDelivery[index].toString() ==
                                  ctr.selectedCash.value
                              ? const Color(0xffebebeb)
                              : Colors.white,
                        ),
                        child: Text(
                          ctr.cashOnDelivery[index],
                          style: TextStyle(
                            color: ctr.cashOnDelivery[index].toString() ==
                                    ctr.selectedCash.value
                                ? Colors.black
                                : const Color(0xff7b7b7b),
                            fontSize: ctr.cashOnDelivery[index].toString() ==
                                    ctr.selectedCash.value
                                ? 16
                                : 15,
                          ),
                        ),
                      ),
                      if (ctr.cashOnDelivery.length - 1 == index)
                        const SizedBox(
                          height: 40,
                        )
                    ],
                  ),
                ),
              ),
            ),
            blendMode: BlendMode.dstOut,
          ),
        ),
      ],
    ),
  );
}
