import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final slideAddItems = [
    "assets/slider_img.png",
    "assets/slider_img_two.png",
    "assets/slider_img.png",
    "assets/slider_img_two.png",
    "assets/slider_img.png",
    "assets/slider_img_two.png"
  ];
  final addPageController = PageController(viewportFraction: 0.9);
  final currentAddPageNotifier = ValueNotifier<int>(0);
  final newsItems = [
    "assets/news.png",
    "assets/news.png",
    "assets/news.png",
    "assets/news.png",
    "assets/news.png",
    "assets/news.png",
    "assets/news.png",
  ];

  final offersItems = [
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
  ];


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
