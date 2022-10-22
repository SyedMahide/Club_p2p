import 'package:get/get.dart';

import '../controllers/book_meetings_screen_controller.dart';

class BookMeetingsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookMeetingsScreenController>(
      () => BookMeetingsScreenController(),
    );
  }
}
