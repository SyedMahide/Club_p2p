import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/password_reason_controller.dart';

class PasswordReasonView extends GetView<PasswordReasonController> {
  const PasswordReasonView({Key? key}) : super(key: key);
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
                  "Password & Reason",
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
                    hintText: "Card Password",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: Colors.white70,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Container(
                height: 193,
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
                    hintText: "Reason",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: Colors.white70,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 60,
                  width: 320,
                  margin: const EdgeInsets.only(top: 43, right: 30),
                  child: MaterialButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => ConfirmYourInfo()),
                      // );
                    },
                    color: Color(0xff4048BF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 16, bottom: 16),
                      child: const Text(
                        "Next",
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
      ),
    );
  }
}
