import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import 'package:get/get.dart';

import '../../../../shared/constants.dart';
import '../../../styles/colors.dart';
import '../controllers/offers_controller.dart';

class OffersView extends GetView<OffersController> {
  const OffersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Offers",
          style: TextStyle(
              fontFamily: 'Questrial',
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400),),
        backgroundColor: SGColors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined, color: SGColors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(AssetConst.icNotification),
            onPressed: () {
              // do something
            },
          ),
          Container(
            margin: EdgeInsets.only(right: 28),
            child: IconButton(
              icon: Image.asset(AssetConst.icAct_group),
              onPressed: () {
                // do something
              },
            ),
          )
        ],
      ),
      backgroundColor: SGColors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 158,
                  margin: const EdgeInsets.only(left: 28, right: 28, top: 28),
                  child: PageView.builder(
                      itemCount: controller.slideAddItems.length,
                      controller: controller.addPageController,
                      itemBuilder: (BuildContext context, int index) {
                        return addSlider(index);
                      },
                      onPageChanged: (int index) {
                        controller.currentAddPageNotifier.value = index;
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CirclePageIndicator(
                          itemCount: controller.slideAddItems.length,
                          currentPageNotifier: controller.currentAddPageNotifier,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 28),
                      child: const Text(
                        "Top offers",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: SGColors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 30),
                      child: const Text(
                        "See All",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: SGColors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 163,
                  // width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: controller.topOffersItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 169,
                        height: 163,
                        margin: EdgeInsets.only(left: 28),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: SGColors.red,
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                controller.topOffersItems[index],
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 28),
                      child: const Text(
                        "My Offers",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: SGColors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 30),
                      child: const Text(
                        "See All",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: SGColors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 157,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: controller.offersItem.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 163,
                        height: 157,
                        margin: EdgeInsets.only(left: 28),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: SGColors.red,
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                controller.offersItem[index],
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  Widget addSlider(int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: SGColors.white,
      ),
      child: Image.asset(controller.slideAddItems[index],
          height: double.infinity, width: double.infinity, fit: BoxFit.fill),
    );
  }
}

