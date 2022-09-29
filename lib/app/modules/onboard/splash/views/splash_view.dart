import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:p2p/shared/constants.dart';

import '../../../../styles/colors.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SGColors.black,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 180),
              child: const Image(
                image: AssetImage(AssetConst.icSplash),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 38),
              child: const Text(
                "Club P2P",
                style: TextStyle(
                  fontFamily: 'Quantico',
                  fontWeight: FontWeight.w400,
                  fontSize: 34,
                  color: SGColors.white,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 8),
              child: const Text(
                "A sister concern of WECON properties",
                style: TextStyle(
                  fontFamily: 'Quantico',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: SGColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
