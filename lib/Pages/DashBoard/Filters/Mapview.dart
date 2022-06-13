import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reserved4you/Helper/NotificatiokKeys.dart';
import 'package:reserved4you/Pages/DashBoard/DashBoardModel.dart';
import '../DashBoardController.dart';

// ignore: must_be_immutable
class MapView extends StatelessWidget {
  DashBoardController _dashboardController = Get.find();
  Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      backgroundColor: Color(AppColor.scaffoldbgcolor),
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: Get.width,
              color: Colors.black,
              child: googlemap(),
            ),
            Positioned(
              bottom: 20,
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 110,
                  width: Get.width,
                  child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _dashboardController.arrStoreList.length,
                      onPageChanged: (currentPageInd) async {
                        var currentObj =
                            _dashboardController.arrStoreList[currentPageInd];
                        zoomForPerticuarIndex(currentObj);
                      },
                      itemBuilder: (context, ind) {
                        // List View Builder Container
                        return InkWell(
                          onTap: () {
                            Get.toNamed("/storeDetailsView",
                                arguments: _dashboardController
                                    .arrStoreList[ind].id
                                    .toString());
                          },
                          child: storeDetailContainer(
                              _dashboardController.arrStoreList[ind]),
                        );
                      }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void zoomForPerticuarIndex(StoreList currentObj) async {
    GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newLatLngZoom(
        LatLng(double.parse(currentObj.latitude!),
            double.parse(currentObj.longitude!)),
        18));
  }

  AppBar appbar() {
    return AppBar(
      backgroundColor: Color(AppColor.scaffoldbgcolor),
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          height: 35.0,
          width: 35.0,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              Get.back();
            },
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ),
      ),
      title: Text(
        'mapView'.tr,
        style: TextStyle(
            fontFamily: AppFont.bold, fontSize: 15, color: Colors.black),
      ),
      centerTitle: true,
    );
  }

  Widget googlemap() {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: _dashboardController.cameraPositionForMapView,
      markers: _dashboardController.markersForMapView,
      scrollGesturesEnabled: true,

      myLocationButtonEnabled: false, //right bottom button
    );
  }

  Container storeDetailContainer(StoreList currentObj) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Url Image
          Container(
            width: 110,
            height: 140,
            child: CachedNetworkImage(
              imageUrl: currentObj.storeProfileImagePath!,
              placeholder: (context, url) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/store_default.png",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/store_default.png",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                      currentObj.storeProfileImagePath!,
                    ),
                    fit: BoxFit.cover),
                color: Colors.transparent.withOpacity(0.1)),
          ),
          // Url Text
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                storeName(currentObj.storeName!),
                SizedBox(
                  height: 5,
                ),
                ratingBar(currentObj.avgRating!),
                SizedBox(
                  height: 5,
                ),
                // totalFeedBack
                totalFeedback(
                    avgRating: currentObj.avgRating!,
                    totalReview: currentObj.totalFeedback.toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }

// Url Text
  SizedBox storeName(String name) {
    return SizedBox(
      width: 150,
      child: Text(
        name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        softWrap: true,
        style: TextStyle(
            color: Colors.black, fontFamily: AppFont.bold, fontSize: 17.0),
      ),
    );
  }

// Rating bar
  RatingBar ratingBar(String rating) {
    return RatingBar.builder(
      initialRating: double.parse(rating),
      minRating: 0,
      direction: Axis.horizontal,
      allowHalfRating: true,
      glowColor: Colors.white,
      ignoreGestures: true,
      itemSize: 20,
      unratedColor: Color(0xFFdadbde),
      itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
      itemBuilder: (context, index) {
        return Container(
          height: 20,
          width: 20,
          child: Image.asset(
            AssestPath.homeView + "Star.png",
            height: 18,
            width: 18,
          ),
        );
      },
      onRatingUpdate: (value) {},
    );
  }

  Row totalFeedback({String? totalReview, required String avgRating}) {
    return Row(
      children: [
        Text(
          avgRating,
          style: TextStyle(
              color: Color(0xFFe09c9c),
              fontFamily: AppFont.medium,
              fontSize: 12),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          // ignore: unnecessary_brace_in_string_interps
          "(" + " ${totalReview} " + 'reviewes'.tr + ")",
          style: TextStyle(
              color: Color(0xFFa3a6ab),
              fontFamily: AppFont.medium,
              fontSize: 12),
        ),
      ],
    );
  }
}
