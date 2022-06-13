import 'dart:convert';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reserved4you/Helper/NotificatiokKeys.dart';
import 'package:reserved4you/Pages/DashBoard/DashBoardController.dart';
import 'package:reserved4you/Pages/DashBoard/DashBoardModel.dart';
import 'package:reserved4you/Helper/ResponseModel.dart';
import 'package:reserved4you/Helper/apiProvider.dart';
import 'package:reserved4you/Helper/preferences.dart';
import 'package:reserved4you/Helper/url.dart';
import 'package:get/get.dart';

class FavouriteController extends GetxController {
  // ignore: deprecated_member_use
  RxList<StoreList> arrFavStoreList = <StoreList>[].obs;
  var refreshController = RefreshController();
  var isLoader = false.obs;

  @override
  void onInit() {
    super.onInit();
    checkIfLoginOrNot();
  }

  void checkIfLoginOrNot() async {
    refreshController = RefreshController();
    var isLogin = await (Preferences.preferences.getBool(
        key: PrefernceKey.isUserLogin, defValue: false) as Future<bool>);

    if (isLogin) {
      getFavData();
    } else {
      //Get.back();
      Get.toNamed('/login', arguments: true);
    }
  }

  void getFavData() {
    isLoader.value = true;
    ApiProvider apiProvider = ApiProvider();

    arrFavStoreList.clear();

    var url = ApiUrl.favoriteslist;
    var body = {};

    apiProvider.post(url, body).then((value) {
      var responseJson = json.decode(value.body);
      print(responseJson);
      ResponseModel _responseModel = ResponseModel.fromJson(responseJson);
      if (_responseModel.responseCode == ResponseCodeForAPI.sucessC) {
        var responsedata = responseJson["ResponseData"];
        arrFavStoreList.value = StoreList.getData(responsedata);
      }
      isLoader.value = false;
      refreshController.refreshCompleted();
    });
  }

  // Future<StoreList> getFavDataRefresh() async{
  //   ApiProvider apiProvider = ApiProvider();
  //
  //   arrFavStoreList.clear();
  //
  //   var url = ApiUrl.favoriteslist;
  //   var body = {};
  //
  //   var apidata = await apiProvider.post(url, body).then((value) {
  //      var responseJson = json.decode(value.body);
  //     print(responseJson);
  //     ResponseModel _responseModel = ResponseModel.fromJson(responseJson);
  //     if (_responseModel.responseCode == ResponseCodeForAPI.sucessC) {
  //       var responsedata = responseJson["ResponseData"];
  //       arrFavStoreList.value = StoreList.getData(responsedata);
  //
  //       return arrFavStoreList;
  //     } else {
  //       return arrFavStoreList;
  //     }
  //
  //
  //   });

  //}

  void doFavouriteFromServer(String? storeid, String url) {
    ApiProvider apiProvider = ApiProvider();

    var body = {"store_id": storeid};
    print(body);
    apiProvider.post(url, body).then((value) {
      var responseJson = json.decode(value.body);
      print(responseJson);
      ResponseModel _responseModel = ResponseModel.fromJson(responseJson);
      if (_responseModel.responseCode == ResponseCodeForAPI.sucessC) {
        getFavData();
        refreshHomePage();
      } else {}

      showTostMessage(message: _responseModel.responseText);
    });
  }

  void refreshHomePage() {
    DashBoardController _dashboar = Get.find();
    _dashboar.getAllDataForDashboard();
  }
}
