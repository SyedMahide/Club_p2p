import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainScreenController extends GetxController {
  //TODO: Implement MainScreenController

  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    //super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }


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
