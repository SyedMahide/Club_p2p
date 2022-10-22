import 'package:get/get.dart';

import '../controllers/phone_number_email_controller.dart';

class PhoneNumberEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhoneNumberEmailController>(
      () => PhoneNumberEmailController(),
    );
  }
}
