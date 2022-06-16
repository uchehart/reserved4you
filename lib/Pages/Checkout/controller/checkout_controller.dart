import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/checkout_order_confirmation.dart';

class CheckoutController extends GetxController {
  RxString selectedPaymentMethod = ''.obs;
  RxString selectTip = ''.obs;
  RxBool isBillingDetailValid = true.obs;
  RxBool isCompletePayment = false.obs;
  RxString s = ''.obs;

  selectPaymentMethod(String id) {
    print(id);
    selectedPaymentMethod.value = id;
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
