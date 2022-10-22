import 'package:get/get.dart';

import '../controllers/life_style_controller.dart';

class LifeStyleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LifeStyleController>(
      () => LifeStyleController(),
    );
  }
}
