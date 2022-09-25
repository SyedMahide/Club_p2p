import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get/get.dart';

enum CustomUserEventsAnalytics {
  CUSTOM_EVENT,
  TAP_ON_RUNNING,
  WEEKLY_STATS_HELP_BUTTON,
  PRS_HELP_BUTTON,
  FRESHNESS_HELP_BUTTON,
  TRAINING_LOAD_HELP_BUTTON,
}

class AnalyticsService {
  static AnalyticsService get to => Get.find();
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  FirebaseAnalyticsObserver getAnalyticsObserver() {
    return FirebaseAnalyticsObserver(analytics: _analytics);
  }

  void sendPageAnalytics(String? pageName) {
    getAnalyticsObserver().analytics.setCurrentScreen(
          screenName: '$pageName',
        );
  }

  Future<void> sendCustomUserEvents(
      {CustomUserEventsAnalytics eventName =
          CustomUserEventsAnalytics.CUSTOM_EVENT,
      required Map<String?, dynamic> params}) async {
    final Map<String, Object> userParams = params as Map<String, Object>;
    userParams.removeWhere((String? key, dynamic value) => value == null);
    await getAnalyticsObserver().analytics.logEvent(
        name: eventName.toString().split('.').last.toUpperCase(),
        parameters: userParams);
  }

  Future<void> sendNamedUserEvents(
      {required String eventName, Map<String, dynamic>? params}) async {
    final Map<String, Object> userParams =
        (params ?? <String, Object>{}) as Map<String, Object>;
    userParams.removeWhere((String key, dynamic value) => value == null);
    await getAnalyticsObserver()
        .analytics
        .logEvent(name: eventName.toUpperCase(), parameters: userParams);
  }
}
