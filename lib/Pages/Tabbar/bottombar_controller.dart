import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:reserved4you/Helper/NotificatiokKeys.dart';
import 'package:reserved4you/Helper/preferences.dart';
//import 'package:reserved4you/Pages/Notification/notification_service.dart';

BottomBarController bottomBarController = Get.put(BottomBarController());

class BottomBarController extends GetxController {
  RxBool notificationBadge = false.obs;

  // Future<void> getNotifications() async {
  //   var isLogin = await (Preferences.preferences.getBool(
  //       key: PrefernceKey.isUserLogin, defValue: false) as Future<bool>);
  //   if (isLogin) {
  //     await NotificationService.getNotifications().then((model) async {
  //       int? length = await preferences.getInt(
  //         key: PrefernceKey.totalNotification,
  //       );
  //       if (length != null && model!.responseData!.length != length) {
  //         notificationBadge.value = true;
  //       }
  //     });
  //   }
  // }
}

// class LifeCycleController extends SuperController with WidgetsBindingObserver {
//   @override
//   void onDetached() {}

//   @override
//   void onInactive() {}

//   @override
//   void onPaused() {}

//   @override
//   void onResumed() {}

//   @override
//   // void didChangeAppLifecycleState(AppLifecycleState state) {
//   //   print(state);
//   //   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//   //     statusBarIconBrightness: Brightness.dark,
//   //     statusBarColor: Color(
//   //       AppColor.logoBgColor,
//   //     ),
//   //   ));
//   //   if (state == AppLifecycleState.resumed) {
//   //     bottomBarController.getNotifications();
//   //   }
//   //   super.didChangeAppLifecycleState(state);
//   // }
// }
