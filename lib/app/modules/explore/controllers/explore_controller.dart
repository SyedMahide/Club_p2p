import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ExploreController extends GetxController {
  //TODO: Implement ExploreController

  final slideAddItems = [
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
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
