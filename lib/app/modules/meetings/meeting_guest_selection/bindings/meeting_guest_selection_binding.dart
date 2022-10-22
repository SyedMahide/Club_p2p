import 'package:get/get.dart';

import '../controllers/meeting_guest_selection_controller.dart';

class MeetingGuestSelectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MeetingGuestSelectionController>(
      () => MeetingGuestSelectionController(),
    );
  }
}
