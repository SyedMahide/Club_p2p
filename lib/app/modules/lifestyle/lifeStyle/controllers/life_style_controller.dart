import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LifeStyleController extends GetxController {

  final slideAddItems = [
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
  ];
  final shopItems = [
    "assets/shop.png",
    "assets/shop.png",
    "assets/shop.png",
    "assets/shop.png",
    "assets/shop.png",
    "assets/shop.png",
    "assets/shop.png",
  ];

  final weconItems = [
    "assets/wecon.png",
    "assets/wecon.png",
    "assets/wecon.png",
    "assets/wecon.png",
    "assets/wecon.png",
    "assets/wecon.png",
    "assets/wecon.png",
  ];
  final addPageController = PageController();
  final currentAddPageNotifier = ValueNotifier<int>(0);

  @override
  void initState() {}


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
