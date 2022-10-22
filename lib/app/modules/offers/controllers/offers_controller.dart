import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OffersController extends GetxController {
  //TODO: Implement OffersController

  final slideAddItems = [
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
  ];
  final topOffersItems = [
    "assets/top_offers.png",
    "assets/top_offers.png",
    "assets/top_offers.png",
    "assets/top_offers.png",
    "assets/top_offers.png",
    "assets/top_offers.png",
  ];
  final offersItem = [
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
  ];
  final addPageController = PageController();
  final currentAddPageNotifier = ValueNotifier<int>(0);


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
