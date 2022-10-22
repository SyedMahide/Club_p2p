import 'package:get/get.dart';

import '../controllers/event_date_time_controller.dart';

class EventDateTimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventDateTimeController>(
      () => EventDateTimeController(),
    );
  }
}
