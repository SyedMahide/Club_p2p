import 'package:get/get.dart';

import '../controllers/confirm_event_info_controller.dart';

class ConfirmEventInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmEventInfoController>(
      () => ConfirmEventInfoController(),
    );
  }
}
