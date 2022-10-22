import 'package:get/get.dart';

import '../controllers/life_style_screen_controller.dart';

class LifeStyleScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LifeStyleScreenController>(
      () => LifeStyleScreenController(),
    );
  }
}
