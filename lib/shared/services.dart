import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:p2p/shared/analytics.dart';

Future<void> setupDependencies() async {
  await Firebase.initializeApp();
  Get.lazyPut(() => AnalyticsService());
  // Get.lazyPut(() => NavigationService());
}
