import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../shared/constants.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 69, left: 28, right: 119),
                child: const Text(
                  "Let's Sign You In",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 14, left: 28, right: 80),
                child: const Text(
                  "Welcome back, you have been missed",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 24, left: 28, right: 119),
                child: const Text(
                  "Enter your mobile number",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white),
                ),
              ),
              Container(
                // alignment: Alignment.center,
                margin: EdgeInsets.only(top: 45, left: 50),
                child: Center(
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(),
                          child: const Image(
                            image: AssetImage(AssetConst.icFlag),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          height: 63,
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 55, bottom: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.white,
                            style: const TextStyle(
                                color: Color(0xffB0AAAA),
                                fontFamily: 'Questrial',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontStyle: FontStyle.normal),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(2.0)),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(2.0)),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              hintText: "+8800000-000000",
                              hintStyle: TextStyle(
                                fontFamily: 'Questrial',
                                color: Color(0xffB0AAAA),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 30, left: 50, right: 50),
                  child: MaterialButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => PinCodeVerificationScreen()),
                      // );
                    },
                    color: Color(0xff4048BF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 16, bottom: 16),
                      child: const Text(
                        "Log in with OTP",
                        style: TextStyle(
                            color: Colors.white,
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
              Container(
                margin: const EdgeInsets.only(top: 37),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: "Already Have An Account? ",
                        style: const TextStyle(
                          fontFamily: 'Questrial',
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                        children: [
                          TextSpan(
                              text: "Sign up",
                              style: const TextStyle(
                                fontFamily: 'Questrial',
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => SignInScreen()),
                                  // );
                                }),
                        ]),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: const Center(
                  child: SizedBox(
                    child: Text(
                      "Tap to continue means you are okay with our",
                      style: TextStyle(
                        fontFamily: 'Questrial',
                        color: Color(0xffC3C1C1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: const Text(
                  "Terms of Service & Privacy Policy",
                  style: TextStyle(
                    fontFamily: 'Questrial',
                    color: Color(0xff1877F2),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              // Center(
              //   child: Container(
              //     margin: EdgeInsets.only(top: 82),
              //     child: const Text(
              //       "Or",
              //       style: TextStyle(
              //         fontFamily: 'Questrial',
              //         color: Colors.white,
              //         fontSize: 16,
              //         fontWeight: FontWeight.w500,
              //         fontStyle: FontStyle.normal,
              //       ),
              //     ),
              //   ),
              // ),

              // Container(
              //   margin: const EdgeInsets.only(top: 30, left: 50, right: 50,),
              //   padding: const EdgeInsets.only(top: 10, bottom: 10),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(6),
              //       border: Border.all(color: Colors.white)
              //   ),
              //   child: Row(
              //     children: [
              //       Expanded(
              //       flex: 1,
              //       child: Container(
              //         height: 20,
              //         margin: EdgeInsets.only(left: 10),
              //         child: const Image(
              //           image: AssetImage("assets/Gmail.png"),
              //         ),
              //       ),
              //     ),
              //       Spacer(),
              //       const Expanded(
              //         flex: 5,
              //         child: Text('Continue with Email',
              //           style: TextStyle(
              //             fontFamily: 'Questrial',
              //             color: Colors.white,
              //             fontSize: 13,
              //             fontWeight: FontWeight.w400,
              //             fontStyle: FontStyle.normal,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: const EdgeInsets.only(top: 10, left: 50, right: 50),
              //   padding: const EdgeInsets.only(top: 10, bottom: 10),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(6),
              //       border: Border.all(color: Colors.white)
              //   ),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         flex: 1,
              //         child: Container(
              //           height: 20,
              //           margin: EdgeInsets.only(left: 10),
              //           child: const Image(
              //             image: AssetImage("assets/Facebook.png"),
              //           ),
              //         ),
              //       ),
              //       Spacer(),
              //       const Expanded(
              //         flex: 5,
              //         child: Text('Continue with Facebook',
              //           style: TextStyle(
              //             fontFamily: 'Questrial',
              //             color: Colors.white,
              //             fontSize: 13,
              //             fontWeight: FontWeight.w400,
              //             fontStyle: FontStyle.normal,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: const EdgeInsets.only(top: 10, left: 50, right: 50),
              //   padding: const EdgeInsets.only(top: 5, bottom: 5),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(6),
              //       border: Border.all(color: Colors.white)
              //   ),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         flex: 1,
              //         child: Container(
              //           height: 30,
              //           margin: EdgeInsets.only(left: 10),
              //           child: const Image(
              //             image: AssetImage("assets/Google.png"),
              //           ),
              //         ),
              //       ),
              //       Spacer(),
              //       const Expanded(
              //         flex: 5,
              //         child: Text('Continue with Google',
              //           style: TextStyle(
              //             fontFamily: 'Questrial',
              //             color: Colors.white,
              //             fontSize: 13,
              //             fontWeight: FontWeight.w400,
              //             fontStyle: FontStyle.normal,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
