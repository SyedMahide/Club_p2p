import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p2p/app/modules/cards/card_screen/bindings/card_screen_binding.dart';
import 'package:p2p/app/modules/cards/card_screen/views/card_screen_view.dart';
import 'package:p2p/app/modules/cards/confirm_your_info/bindings/confirm_your_info_binding.dart';
import 'package:p2p/app/modules/cards/confirm_your_info/views/confirm_your_info_view.dart';
import 'package:p2p/app/modules/cards/password_reason/bindings/password_reason_binding.dart';
import 'package:p2p/app/modules/cards/password_reason/views/password_reason_view.dart';
import 'package:p2p/app/modules/cards/phoneNumber_email/bindings/phone_number_email_binding.dart';
import 'package:p2p/app/modules/cards/phoneNumber_email/views/phone_number_email_view.dart';
import 'package:p2p/app/modules/cards/your_name/bindings/your_name_binding.dart';
import 'package:p2p/app/modules/cards/your_name/views/your_name_view.dart';
import 'package:p2p/app/modules/events/confirm_event_info/bindings/confirm_event_info_binding.dart';
import 'package:p2p/app/modules/events/confirm_event_info/views/confirm_event_info_view.dart';
import 'package:p2p/app/modules/events/event_date_time/bindings/event_date_time_binding.dart';
import 'package:p2p/app/modules/events/event_date_time/views/event_date_time_view.dart';
import 'package:p2p/app/modules/events/event_name/bindings/event_name_binding.dart';
import 'package:p2p/app/modules/events/event_name/views/event_name_view.dart';
import 'package:p2p/app/modules/events/events_screen/bindings/events_screen_binding.dart';
import 'package:p2p/app/modules/events/events_screen/views/events_screen_view.dart';
import 'package:p2p/app/modules/events/select_lounge/bindings/select_lounge_binding.dart';
import 'package:p2p/app/modules/events/select_lounge/views/select_lounge_view.dart';
import 'package:p2p/app/modules/explore/bindings/explore_binding.dart';
import 'package:p2p/app/modules/explore/views/explore_view.dart';
import 'package:p2p/app/modules/home/bindings/home_binding.dart';
import 'package:p2p/app/modules/home/views/home_view.dart';
import 'package:p2p/app/modules/lifestyle/lifeStyle/bindings/life_style_binding.dart';
import 'package:p2p/app/modules/lifestyle/lifeStyle/views/life_style_view.dart';
import 'package:p2p/app/modules/lifestyle/lifeStyle_screen/bindings/life_style_screen_binding.dart';
import 'package:p2p/app/modules/lifestyle/lifeStyle_screen/views/life_style_screen_view.dart';
import 'package:p2p/app/modules/main_screen/bindings/main_screen_binding.dart';
import 'package:p2p/app/modules/main_screen/views/main_screen_view.dart';
import 'package:p2p/app/modules/meetings/book_meetings_screen/bindings/book_meetings_screen_binding.dart';
import 'package:p2p/app/modules/meetings/book_meetings_screen/views/book_meetings_screen_view.dart';
import 'package:p2p/app/modules/meetings/confirm_meeting_info/bindings/confirm_meeting_info_binding.dart';
import 'package:p2p/app/modules/meetings/confirm_meeting_info/views/confirm_meeting_info_view.dart';
import 'package:p2p/app/modules/meetings/meeting_date_time/bindings/meeting_date_time_binding.dart';
import 'package:p2p/app/modules/meetings/meeting_date_time/views/meeting_date_time_view.dart';
import 'package:p2p/app/modules/meetings/meeting_guest_selection/bindings/meeting_guest_selection_binding.dart';
import 'package:p2p/app/modules/meetings/meeting_guest_selection/views/meeting_guest_selection_view.dart';
import 'package:p2p/app/modules/meetings/meeting_place_screen/bindings/meeting_place_screen_binding.dart';
import 'package:p2p/app/modules/meetings/meeting_place_screen/views/meeting_place_screen_view.dart';
import 'package:p2p/app/modules/onboard/otp_pin/bindings/otp_pin_binding.dart';
import 'package:p2p/app/modules/onboard/otp_pin/views/otp_pin_view.dart';
import 'package:p2p/app/modules/onboard/signup/bindings/signup_binding.dart';
import 'package:p2p/app/modules/onboard/signup/views/signup_view.dart';
import 'package:p2p/app/modules/onboard/splash/splash_view.dart';
import 'package:p2p/shared/analytics.dart';
import '../modules/offers/bindings/offers_binding.dart';
import '../modules/offers/views/offers_view.dart';
import '../modules/onboard/signin/bindings/signin_binding.dart';
import '../modules/onboard/signin/views/signin_view.dart';
import 'routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Map<String, dynamic>? args;
    try {
      args = settings.arguments as Map<String, dynamic>?;
    } catch (_) {
      args = null;
    }

    logRouteAnalytics(routeName: settings.name, arguments: args);

    switch (settings.name) {
      // case Routes.index:
      //   return MaterialPageRoute<dynamic>(builder: (_) => HomeUI());
      case Routes.index:
        return GetPageRoute<dynamic>(
          page: () => const HomeView(),
          binding: HomeBinding(),
          settings: settings,
        );
      case Routes.splash:
        return MaterialPageRoute<dynamic>(builder: (_) => const SplashView());
      case Routes.signup:
        return GetPageRoute<dynamic>(
          page: () => const SignUpView(),
          binding: SignUpBinding(),
          settings: settings,
        );
      case Routes.signin:
        return GetPageRoute<dynamic>(
          page: () => const SigninView(),
          binding: SigninBinding(),
          settings: settings,
        );
      case Routes.otp_pin:
        return GetPageRoute<dynamic>(
          page: () => const OtpPinView(),
          binding: OtpPinBinding(),
          settings: settings,
        );
      case Routes.offers:
        return GetPageRoute<dynamic>(
          page: () => const OffersView(),
          binding: OffersBinding(),
          settings: settings,
        );
      case Routes.explore:
        return GetPageRoute<dynamic>(
          page: () => const ExploreView(),
          binding: ExploreBinding(),
          settings: settings,
        );
      case Routes.main_screen:
        return GetPageRoute<dynamic>(
          page: () => const MainScreenView(),
          binding: MainScreenBinding(),
          settings: settings,
        );
        case Routes.book_meetings_screen:
        return GetPageRoute<dynamic>(
          page: () => const BookMeetingsScreenView(),
          binding: BookMeetingsScreenBinding(),
          settings: settings,
        );
        case Routes.meeting_place_screen:
        return GetPageRoute<dynamic>(
          page: () => const MeetingPlaceScreenView(),
          binding: MeetingPlaceScreenBinding(),
          settings: settings,
        );
        case Routes.meeting_date_time:
        return GetPageRoute<dynamic>(
          page: () => const MeetingDateTimeView(),
          binding: MeetingDateTimeBinding(),
          settings: settings,
        );
        case Routes.meeting_guest_selection:
        return GetPageRoute<dynamic>(
          page: () => const MeetingGuestSelectionView(),
          binding: MeetingGuestSelectionBinding(),
          settings: settings,
        );
        case Routes.confirm_meeting_info:
        return GetPageRoute<dynamic>(
          page: () => const ConfirmMeetingInfoView(),
          binding: ConfirmMeetingInfoBinding(),
          settings: settings,
        );
      case Routes.events_screen:
        return GetPageRoute<dynamic>(
          page: () => const EventsScreenView(),
          binding: EventsScreenBinding(),
          settings: settings,
        );
      case Routes.event_name:
        return GetPageRoute<dynamic>(
          page: () => const EventNameView(),
          binding: EventNameBinding(),
          settings: settings,
        );
      case Routes.event_date_time:
        return GetPageRoute<dynamic>(
          page: () => const EventDateTimeView(),
          binding: EventDateTimeBinding(),
          settings: settings,
        );
      case Routes.select_lounge:
        return GetPageRoute<dynamic>(
          page: () => const SelectLoungeView(),
          binding: SelectLoungeBinding(),
          settings: settings,
        );
      case Routes.confirm_event_info:
        return GetPageRoute<dynamic>(
          page: () => const ConfirmEventInfoView(),
          binding: ConfirmEventInfoBinding(),
          settings: settings,
        );
      case Routes.card_screen:
        return GetPageRoute<dynamic>(
          page: () => const CardScreenView(),
          binding: CardScreenBinding(),
          settings: settings,
        );
      case Routes.your_name:
        return GetPageRoute<dynamic>(
          page: () => const YourNameView(),
          binding: YourNameBinding(),
          settings: settings,
        );
      case Routes.phone_number_email:
        return GetPageRoute<dynamic>(
          page: () => const PhoneNumberEmailView(),
          binding: PhoneNumberEmailBinding(),
          settings: settings,
        );
      case Routes.password_reason:
        return GetPageRoute<dynamic>(
          page: () => const PasswordReasonView(),
          binding: PasswordReasonBinding(),
          settings: settings,
        );
      case Routes.confirm_your_info:
        return GetPageRoute<dynamic>(
          page: () => const ConfirmYourInfoView(),
          binding: ConfirmYourInfoBinding(),
          settings: settings,
        );
      case Routes.life_style_screen:
        return GetPageRoute<dynamic>(
          page: () => const LifeStyleScreenView(),
          binding: LifeStyleScreenBinding(),
          settings: settings,
        );
      case Routes.life_style:
        return GetPageRoute<dynamic>(
          page: () => const LifeStyleView(),
          binding: LifeStyleBinding(),
          settings: settings,
        );



      default:
        return _route404();
    }
  }

  static Route<dynamic> _route404() {
    return MaterialPageRoute<dynamic>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('404'),
        ),
        body: const Center(
          child: Text('Page Not Found'),
        ),
      );
    });
  }

  static void logRouteAnalytics(
      {String? routeName, Map<String, dynamic>? arguments}) {
    AnalyticsService.to.sendPageAnalytics(routeName);
  }
}
