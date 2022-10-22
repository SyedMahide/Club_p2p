import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p2p/app/bloc/notification/notification_bloc.dart';
import 'package:p2p/app/modules/onboard/signin/api/signin_api.dart';
import 'package:p2p/app/modules/onboard/signin/model/sign_in_model.dart';
import 'package:p2p/app/routes/routes.dart';

class SigninController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool isLoading = false.obs;

  bool ishiddenPassword = true;
  bool ishiddenConfirmPassword = true;
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

  Future<void> onLoginPressed() async {
    isLoading.value = true;

    if (emailController.text == '') {
      NotificationBloc.to
          .add(const ErrorNotificationEvent('Please enter Email'));
      return;
    }
    if (passwordController.text == '') {
      NotificationBloc.to
          .add(const ErrorNotificationEvent('Please enter Password'));
      return;
    }
    LoginModel model = LoginModel(
        username: emailController.text, password: passwordController.text);

    SignInApi api = SignInApi();
    Either<String, bool> response = await api.loginUser(loginModel: model);
    isLoading.value = false;
    response.fold(
      (String error) => NotificationBloc.to.add(ErrorNotificationEvent(error)),
      (bool flag) {
        if (flag == true) {
          // Get.toNamed(Routes.);
        }
      },
    );
  }
}
