import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p2p/app/bloc/notification/notification_bloc.dart';
import 'package:p2p/app/modules/onboard/otp_pin/api/otp_api.dart';
import 'package:p2p/app/routes/routes.dart';

class OtpPinController extends GetxController {
  TextEditingController otpController = TextEditingController();
  RxBool isLoading = false.obs;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void onInit() {
    otpController.addListener(() {
      if (otpController.text.length >= 6) {
        onComplete();
      }
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onComplete() async {
    isLoading.value = true;
    int? otp = int.tryParse(otpController.text);
    if (otp == null) {
      NotificationBloc.to
          .add(const ErrorNotificationEvent('Something went wrong'));
      return;
    }
    OtpApi api = OtpApi();
    Either<String, bool> response = await api.verifyUser(otp: otp);
    isLoading.value = false;
    response.fold(
      (String error) => NotificationBloc.to.add(ErrorNotificationEvent(error)),
      (bool flag) {
        if (flag == true) {
          Get.toNamed(Routes.signin);
        }
      },
    );
  }
}
