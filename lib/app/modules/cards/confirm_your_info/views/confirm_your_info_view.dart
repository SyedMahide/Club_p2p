import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/confirm_your_info_controller.dart';

class ConfirmYourInfoView extends GetView<ConfirmYourInfoController> {
  const ConfirmYourInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                // height: 48,
                // width: 260,
                margin: EdgeInsets.only(top: 136),
                child: const Text(
                  "Confirm Your Info",
                  style: TextStyle(
                      fontFamily: "Questrial",
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                //height: 46,
                //  width: 250,
                margin: EdgeInsets.only(top: 20),
                child: const Text(
                  "Lorem ipsum dolar sit amit,consectetur adipisicing elit.",
                  style: TextStyle(
                      fontFamily: "Questrial",
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Colors.white),
                ),
              ),
              Container(
                // width: 250,
                alignment: Alignment.topLeft,
                child: const Text(
                  "Aliquam mus tellus euismod a vitae vivirra.",
                  style: TextStyle(
                      fontFamily: "Questrial",
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Colors.white),
                ),
              ),
              Container(
                //height: 93,
                width: 320,
                margin: const EdgeInsets.only(top: 40, right: 30),
                // color: Color(0xff575DB7),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  style: const TextStyle(
                      color: Color(0xffB0AAAA),
                      fontFamily: 'Questrial',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontStyle: FontStyle.normal),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xff575DB7),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      //borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "Shohan Shabbir",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Container(
                //height: 193,
                width: 320,
                margin: const EdgeInsets.only(top: 20, right: 30),
                // color: Color(0xff575DB7),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  style: const TextStyle(
                      color: Color(0xffB0AAAA),
                      fontFamily: 'Questrial',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontStyle: FontStyle.normal),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xff575DB7),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      //borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "8801318370722",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Container(
                //height: 93,
                width: 320,
                margin: const EdgeInsets.only(top: 20, right: 30),
                // color: Color(0xff575DB7),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  style: const TextStyle(
                      color: Color(0xffB0AAAA),
                      fontFamily: 'Questrial',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontStyle: FontStyle.normal),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xff575DB7),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      //borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "shohanur.alam22@gmail.com",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Container(
                //height: 93,
                width: 320,
                margin: const EdgeInsets.only(top: 20, right: 30),
                // color: Color(0xff575DB7),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  style: const TextStyle(
                      color: Color(0xffB0AAAA),
                      fontFamily: 'Questrial',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontStyle: FontStyle.normal),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xff575DB7),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      //borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "Card Password",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: Colors.white70,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Container(
                height: 93,
                width: 320,
                margin: const EdgeInsets.only(top: 20, right: 30),
                // color: Color(0xff575DB7),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  style: const TextStyle(
                      color: Color(0xffB0AAAA),
                      fontFamily: 'Questrial',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontStyle: FontStyle.normal),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xff575DB7),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      //borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "Lorem ipsum dolar sit amit,consectetur adipisicing elit.Aliquam mus tellus euismod a vitae vivirra.",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Container(
                width: 340,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 60,
                          margin: const EdgeInsets.only(top: 30),
                          child: MaterialButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => ConfirmEventInfo()),
                              // );
                            },
                            //color: Color(0xff4048BF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(top: 16, bottom: 16),
                              child: const Text(
                                "Cancel",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Questrial",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )),

                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 60,
                        margin: const EdgeInsets.only(top: 30, right: 30),
                        child: MaterialButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => ConfirmEventInfo()),
                            // );
                          },
                          color: Color(0xff4048BF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14)),
                          child: Container(
                            alignment: Alignment.center,
                            //  padding: const EdgeInsets.only(left: 5, right: 5),
                            child: const Text(
                              "Send Request",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
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
            ],
          ),
        ),
      ),
    );
  }
}
