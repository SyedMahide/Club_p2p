import 'package:get/get.dart';

import '../controllers/events_screen_controller.dart';

class EventsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventsScreenController>(
      () => EventsScreenController(),
    );
  }
}
