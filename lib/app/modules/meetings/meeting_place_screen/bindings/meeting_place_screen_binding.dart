import 'package:get/get.dart';

import '../controllers/meeting_place_screen_controller.dart';

class MeetingPlaceScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MeetingPlaceScreenController>(
      () => MeetingPlaceScreenController(),
    );
  }
}
