import 'package:get/get.dart';

import '../controllers/otp_pin_controller.dart';

class OtpPinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpPinController>(
      () => OtpPinController(),
    );
  }
}
