import 'package:get/get.dart';

import '../controllers/meeting_date_time_controller.dart';

class MeetingDateTimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MeetingDateTimeController>(
      () => MeetingDateTimeController(),
    );
  }
}
