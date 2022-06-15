import 'package:get/get.dart';

class CheckoutController extends GetxController {
  RxString selectedPaymentMethod = ''.obs;
  RxString selectTip = ''.obs;

  selectPaymentMethod(String id) {
    print(id);
    selectedPaymentMethod.value = id;
  }

  selectTipMethod(String id) {
    if (selectTip.value != id) {
      selectTip.value = id;
    } else if (selectTip.value == id) {
      selectTip.value = '';
    }
  }
}
