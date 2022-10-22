import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p2p/app/bloc/notification/notification_bloc.dart';
import 'package:p2p/app/modules/onboard/signup/api/registration_api.dart';
import 'package:p2p/app/modules/onboard/signup/model/registration_model.dart';
import 'package:p2p/app/routes/routes.dart';

class SignUpController extends GetxController {
  bool value = false;

 RxBool ishiddenPassword = true.obs;
 RxBool ishiddenConfirmPassword = true.obs;

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

  Future<void> onSignupPressed() async {
    Get.toNamed(Routes.otp_pin);
    //   if (firstnameController.text == '') {
    //     NotificationBloc.to
    //         .add(const ErrorNotificationEvent('First name is required'));
    //     return;
    //   }
    //   if (lastNameController.text == '') {
    //     NotificationBloc.to
    //         .add(const ErrorNotificationEvent('Last name is required'));
    //     return;
    //   }
    //   if (emailController.text == '') {
    //     NotificationBloc.to
    //         .add(const ErrorNotificationEvent('Email is required'));
    //     return;
    //   }
    //   if (!EmailValidator.validate(emailController.text.trim())) {
    //     NotificationBloc.to
    //         .add(const ErrorNotificationEvent('Please provide a valid Email'));
    //     return;
    //   }
    //   if (phoneNumberController.text == '') {
    //     NotificationBloc.to
    //         .add(const ErrorNotificationEvent('Phone number is required'));
    //     return;
    //   }
    //   if (nidOrPassportOrBirthCertController.text == '') {
    //     NotificationBloc.to.add(const ErrorNotificationEvent(
    //         'Verification (NID / Passport / Birth Cert.) is required'));
    //     return;
    //   }
    //   if (dateOfBirthController.text == '') {
    //     NotificationBloc.to
    //         .add(const ErrorNotificationEvent('Date of Birth is required'));
    //     return;
    //   }
    //   if (professionController.text == '') {
    //     NotificationBloc.to
    //         .add(const ErrorNotificationEvent('Profession is required'));
    //     return;
    //   }
    //   if (passwordController.text == '') {
    //     NotificationBloc.to
    //         .add(const ErrorNotificationEvent('Password is required'));
    //     return;
    //   }
    //   if (confirmPasswordController.text == '') {
    //     NotificationBloc.to
    //         .add(const ErrorNotificationEvent('Confirm Password is required'));
    //     return;
    //   }

    //   if (confirmPasswordController.text != passwordController.text) {
    //     NotificationBloc.to
    //         .add(const ErrorNotificationEvent('Both Password do not match'));
    //     return;
    //   }

    //   final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    //   IosDeviceInfo? iosInfo;
    //   AndroidDeviceInfo? androidInfo;
    //   if (Platform.isIOS) {
    //     iosInfo = await deviceInfo.iosInfo;
    //   } else if (Platform.isAndroid) {
    //     androidInfo = await deviceInfo.androidInfo;
    //   }

    //   RegistrationModel model = RegistrationModel(
    //     firstName: firstnameController.text,
    //     lastName: lastNameController.text,
    //     email: emailController.text,
    //     phone: phoneNumberController.text,
    //     nid: nidOrPassportOrBirthCertController.text,
    //     dateOfBirth: dateOfBirthController.text,
    //     profession: professionController.text,
    //     userTypeId: 3,
    //     password: passwordController.text,
    //     passwordConfirmation: confirmPasswordController.text,
    //     concernId: 1,
    //     deviceName: iosInfo?.utsname.machine ?? androidInfo?.model,
    //   );

    //   RegistrationApi api = RegistrationApi();
    //   Either<String, bool> response = await api.registerUser(model: model);

    //   response.fold(
    //     (String error) => NotificationBloc.to.add(ErrorNotificationEvent(error)),
    //     (bool flag) {
    //       if (flag == true) {
    //         Get.toNamed(Routes.otp_pin);
    //       }
    //     },
    //   );
  }
}
