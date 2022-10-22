import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import '../../../../shared/constants.dart';
import '../../../styles/colors.dart';
import '../controllers/explore_controller.dart';

class ExploreView extends GetView<ExploreController> {
  const ExploreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Explore",
          style: TextStyle(
              fontFamily: 'Questrial',
              color: SGColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400),
        ),
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
              Container(
                height: 325,
                width: 325,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GridView(
                    // ignore: sort_child_properties_last
                    children: [
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height - 784,
                            width: 325,
                            child: InkWell(
                              onTap: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: SGColors.blue,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: IconButton(
                                        icon: Image.asset(AssetConst.icMeeting),
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(builder: (context) => BookingMeetings()),
                                          // );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 6),
                            child: const Text(
                              "Meetings",
                              style: TextStyle(
                                  color: SGColors.white,
                                  fontFamily: "Questrial",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height - 784,
                            width: 325,
                            child: InkWell(
                              onTap: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: SGColors.blue,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: IconButton(
                                        icon: Image.asset(AssetConst.icEvent),
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(builder: (context) => EventsScreen()),
                                          // );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 6),
                            child: const Text(
                              "Events",
                              style: TextStyle(
                                  color: SGColors.white,
                                  fontFamily: "Questrial",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height - 784,
                            width: 325,
                            child: InkWell(
                              onTap: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: SGColors.blue,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: IconButton(
                                        icon: Image.asset(AssetConst.icCard),
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(builder: (context) => CardScreen()),
                                          // );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 6),
                            child: const Text(
                              "Card",
                              style: TextStyle(
                                  color: SGColors.white,
                                  fontFamily: "Questrial",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height - 784,
                            width: 325,
                            child: InkWell(
                              onTap: () {

                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: SGColors.blue,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: IconButton(
                                        icon: Image.asset(AssetConst.icLife),
                                        onPressed: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) => LifeStylePage()));
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 6),
                            child: const Text(
                              "LifeStyle",
                              style: TextStyle(
                                  color: SGColors.white,
                                  fontFamily: "Questrial",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 40,
                        crossAxisSpacing: 10),
                  ),
                ),
              ),
            ],
          ),
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
