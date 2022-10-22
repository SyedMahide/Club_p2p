import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../styles/colors.dart';
import '../controllers/main_screen_controller.dart';

class MainScreenView extends GetView<MainScreenController> {
  const MainScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: controller.pageController,
          onPageChanged: (index) {
           // setState(() => controller.currentIndex = index);
          },
          children: <Widget>[
           // HomeScreen(),
           // OffersScreen(),
            // LifeStylePage(),
           // ExploreScreen(),
            Container(
              color: SGColors.green,
            ),
            Container(
              color: SGColors.skyBlue,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.black,
        selectedIndex: controller.currentIndex,
        onItemSelected: (index) {
         // setState(() => controller.currentIndex = index);
          controller.pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            // activeColor: Color(0xff4048BF),
            title: Text('Home'),
            icon: Icon(Icons.home),
            //Image.asset("assets/home.png"),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: Text('Offers'),
            icon: Icon(Icons.discount_outlined),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: Text('Explore'),
            icon: Icon(Icons.explore_outlined),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: Text('Meetings'),
            icon: Icon(Icons.supervised_user_circle_outlined),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: Text('Settings'),
            icon: Icon(Icons.menu_outlined),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
