import 'package:get/get.dart';

import '../controllers/confirm_meeting_info_controller.dart';

class ConfirmMeetingInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmMeetingInfoController>(
      () => ConfirmMeetingInfoController(),
    );
  }
}
