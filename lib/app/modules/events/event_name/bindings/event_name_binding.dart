import 'package:get/get.dart';

import '../controllers/event_name_controller.dart';

class EventNameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventNameController>(
      () => EventNameController(),
    );
  }
}
