import 'package:get/get.dart';
import 'package:p2p/app/routes/routes.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    Future<void>.delayed(const Duration(seconds: 1), () {
      Get.toNamed(Routes.signup);
    });
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
