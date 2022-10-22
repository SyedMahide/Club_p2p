import 'package:get/get.dart';

import '../controllers/confirm_your_info_controller.dart';

class ConfirmYourInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmYourInfoController>(
      () => ConfirmYourInfoController(),
    );
  }
}
