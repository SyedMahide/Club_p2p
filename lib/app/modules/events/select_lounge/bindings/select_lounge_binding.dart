import 'package:get/get.dart';

import '../controllers/select_lounge_controller.dart';

class SelectLoungeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectLoungeController>(
      () => SelectLoungeController(),
    );
  }
}
