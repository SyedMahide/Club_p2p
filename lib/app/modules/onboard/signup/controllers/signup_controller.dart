import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p2p/app/bloc/notification/notification_bloc.dart';
import 'package:p2p/app/routes/routes.dart';

class SignUpController extends GetxController {
  bool value = false;

  bool ishiddenPassword = true;
  bool ishiddenConfirmPassword = true;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

   DateTime? temporaryDate,eventDate;


  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController nidOrPassportOrBirthCertController =
      TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController professionController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
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

  void onSignupPressed() {
    if (firstnameController.text == '') {
      NotificationBloc.to
          .add(const ErrorNotificationEvent('First name is required'));
      return;
    }
    Get.toNamed(Routes.otp_pin);
  }
}
