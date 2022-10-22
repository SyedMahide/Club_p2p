import 'package:get/get.dart';

import '../modules/cards/card_screen/bindings/card_screen_binding.dart';
import '../modules/cards/card_screen/views/card_screen_view.dart';
import '../modules/cards/confirm_your_info/bindings/confirm_your_info_binding.dart';
import '../modules/cards/confirm_your_info/views/confirm_your_info_view.dart';
import '../modules/cards/password_reason/bindings/password_reason_binding.dart';
import '../modules/cards/password_reason/views/password_reason_view.dart';
import '../modules/cards/phoneNumber_email/bindings/phone_number_email_binding.dart';
import '../modules/cards/phoneNumber_email/views/phone_number_email_view.dart';
import '../modules/cards/your_name/bindings/your_name_binding.dart';
import '../modules/cards/your_name/views/your_name_view.dart';
import '../modules/events/confirm_event_info/bindings/confirm_event_info_binding.dart';
import '../modules/events/confirm_event_info/views/confirm_event_info_view.dart';
import '../modules/events/event_date_time/bindings/event_date_time_binding.dart';
import '../modules/events/event_date_time/views/event_date_time_view.dart';
import '../modules/events/event_name/bindings/event_name_binding.dart';
import '../modules/events/event_name/views/event_name_view.dart';
import '../modules/events/events_screen/bindings/events_screen_binding.dart';
import '../modules/events/events_screen/views/events_screen_view.dart';
import '../modules/events/select_lounge/bindings/select_lounge_binding.dart';
import '../modules/events/select_lounge/views/select_lounge_view.dart';
import '../modules/explore/bindings/explore_binding.dart';
import '../modules/explore/views/explore_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lifestyle/lifeStyle/bindings/life_style_binding.dart';
import '../modules/lifestyle/lifeStyle/views/life_style_view.dart';
import '../modules/lifestyle/lifeStyle_screen/bindings/life_style_screen_binding.dart';
import '../modules/lifestyle/lifeStyle_screen/views/life_style_screen_view.dart';
import '../modules/main_screen/bindings/main_screen_binding.dart';
import '../modules/main_screen/views/main_screen_view.dart';
import '../modules/meetings/book_meetings_screen/bindings/book_meetings_screen_binding.dart';
import '../modules/meetings/book_meetings_screen/views/book_meetings_screen_view.dart';
import '../modules/meetings/confirm_meeting_info/bindings/confirm_meeting_info_binding.dart';
import '../modules/meetings/confirm_meeting_info/views/confirm_meeting_info_view.dart';
import '../modules/meetings/meeting_date_time/bindings/meeting_date_time_binding.dart';
import '../modules/meetings/meeting_date_time/bindings/meeting_date_time_binding.dart';
import '../modules/meetings/meeting_date_time/views/meeting_date_time_view.dart';
import '../modules/meetings/meeting_date_time/views/meeting_date_time_view.dart';
import '../modules/meetings/meeting_guest_selection/bindings/meeting_guest_selection_binding.dart';
import '../modules/meetings/meeting_guest_selection/views/meeting_guest_selection_view.dart';
import '../modules/meetings/meeting_place_screen/bindings/meeting_place_screen_binding.dart';
import '../modules/meetings/meeting_place_screen/views/meeting_place_screen_view.dart';
import '../modules/offers/bindings/offers_binding.dart';
import '../modules/offers/views/offers_view.dart';
import '../modules/onboard/otp_pin/bindings/otp_pin_binding.dart';
import '../modules/onboard/otp_pin/views/otp_pin_view.dart';
import '../modules/onboard/signin/bindings/signin_binding.dart';
import '../modules/onboard/signin/views/signin_view.dart';
import '../modules/onboard/signup/bindings/signup_binding.dart';
import '../modules/onboard/signup/views/signup_view.dart';
import '../modules/onboard/splash/splash_view.dart';

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
    GetPage(
      name: _Paths.OFFERS,
      page: () => const OffersView(),
      binding: OffersBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORE,
      page: () => const ExploreView(),
      binding: ExploreBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_SCREEN,
      page: () => const MainScreenView(),
      binding: MainScreenBinding(),
    ),
    GetPage(
      name: _Paths.BOOK_MEETINGS_SCREEN,
      page: () => const BookMeetingsScreenView(),
      binding: BookMeetingsScreenBinding(),
    ),
    GetPage(
      name: _Paths.MEETING_PLACE_SCREEN,
      page: () => const MeetingPlaceScreenView(),
      binding: MeetingPlaceScreenBinding(),
    ),
    GetPage(
      name: _Paths.MEETING_DATE_TIME,
      page: () => const MeetingDateTimeView(),
      binding: MeetingDateTimeBinding(),
      children: [
        GetPage(
          name: _Paths.MEETING_DATE_TIME,
          page: () => const MeetingDateTimeView(),
          binding: MeetingDateTimeBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.MEETING_GUEST_SELECTION,
      page: () => const MeetingGuestSelectionView(),
      binding: MeetingGuestSelectionBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_MEETING_INFO,
      page: () => const ConfirmMeetingInfoView(),
      binding: ConfirmMeetingInfoBinding(),
    ),
    GetPage(
      name: _Paths.EVENTS_SCREEN,
      page: () => const EventsScreenView(),
      binding: EventsScreenBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_NAME,
      page: () => const EventNameView(),
      binding: EventNameBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_DATE_TIME,
      page: () => const EventDateTimeView(),
      binding: EventDateTimeBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_LOUNGE,
      page: () => const SelectLoungeView(),
      binding: SelectLoungeBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_EVENT_INFO,
      page: () => const ConfirmEventInfoView(),
      binding: ConfirmEventInfoBinding(),
    ),
    GetPage(
      name: _Paths.CARD_SCREEN,
      page: () => const CardScreenView(),
      binding: CardScreenBinding(),
    ),
    GetPage(
      name: _Paths.YOUR_NAME,
      page: () => const YourNameView(),
      binding: YourNameBinding(),
    ),
    GetPage(
      name: _Paths.PHONE_NUMBER_EMAIL,
      page: () => const PhoneNumberEmailView(),
      binding: PhoneNumberEmailBinding(),
    ),
    GetPage(
      name: _Paths.PASSWORD_REASON,
      page: () => const PasswordReasonView(),
      binding: PasswordReasonBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_YOUR_INFO,
      page: () => const ConfirmYourInfoView(),
      binding: ConfirmYourInfoBinding(),
    ),
    GetPage(
      name: _Paths.LIFE_STYLE_SCREEN,
      page: () => const LifeStyleScreenView(),
      binding: LifeStyleScreenBinding(),
    ),
    GetPage(
      name: _Paths.LIFE_STYLE,
      page: () => const LifeStyleView(),
      binding: LifeStyleBinding(),
    ),
  ];
}
