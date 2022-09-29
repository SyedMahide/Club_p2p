import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboard/otp_pin/bindings/otp_pin_binding.dart';
import '../modules/onboard/otp_pin/views/otp_pin_view.dart';
import '../modules/onboard/signin/bindings/signin_binding.dart';
import '../modules/onboard/signin/views/signin_view.dart';
import '../modules/onboard/signup/bindings/signup_binding.dart';
import '../modules/onboard/signup/views/signup_view.dart';
import '../modules/onboard/splash/bindings/splash_binding.dart';
import '../modules/onboard/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SignUp,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.OTP_PIN,
      page: () => const OtpPinView(),
      binding: OtpPinBinding(),
    ),
  ];
}
