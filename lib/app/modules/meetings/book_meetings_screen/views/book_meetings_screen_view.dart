import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:p2p/shared/constants.dart';

import '../../../../styles/colors.dart';
import '../controllers/book_meetings_screen_controller.dart';

class BookMeetingsScreenView extends GetView<BookMeetingsScreenController> {
  const BookMeetingsScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SGColors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: const Image(
                      image: AssetImage(AssetConst.icRectangle),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: 160,
                    child: Container(
                      height: 160,
                      child: const Image(
                        image: AssetImage(AssetConst.icMeetings),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 41, left: 29, right: 13),
                child: const Text(
                  "Book A Meeting",
                  style: TextStyle(
                      color: SGColors.white,
                      fontFamily: 'Questrial',
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 20, left: 12),
                //  height: 30,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        child: const Image(
                          image: AssetImage(AssetConst.icArcticons_lounge),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: 15,
                        child: const Text(
                          "Exclusive offers and discounts",
                          style: TextStyle(
                              color: SGColors.white,
                              fontFamily: 'Questrial',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        child: const Image(
                          image: AssetImage(AssetConst.icMap),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: 15,
                        child: const Text(
                          "Lounges all over the city",
                          style: TextStyle(
                              color: SGColors.white,
                              fontFamily: 'Questrial',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        child: const Image(
                          image: AssetImage(AssetConst.icFastfood),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: 15,
                        child: const Text(
                          "Complementary snacks and drinks",
                          style: TextStyle(
                              color: SGColors.white,
                              fontFamily: 'Questrial',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 130, left: 50, right: 50),
                  child: MaterialButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => MeetingPlace()),
                      // );
                    },
                    color: SGColors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 16, bottom: 16),
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                            color: SGColors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Questrial",
                            fontStyle: FontStyle.normal,
                            fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}