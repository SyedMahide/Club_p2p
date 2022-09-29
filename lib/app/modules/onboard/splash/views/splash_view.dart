import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 180),
              child: const Image(
                image: AssetImage("assets/splash.png"),
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
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 8),
              child: const Text(
                "A sister concern of WECON properties",
                style: TextStyle(
                  fontFamily: 'Quantico',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
