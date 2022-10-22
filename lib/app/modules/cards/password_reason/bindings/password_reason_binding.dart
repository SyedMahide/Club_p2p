import 'package:get/get.dart';

import '../controllers/password_reason_controller.dart';

class PasswordReasonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PasswordReasonController>(
      () => PasswordReasonController(),
    );
  }
}
