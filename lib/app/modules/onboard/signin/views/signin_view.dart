import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:p2p/app/routes/routes.dart';
import 'package:p2p/app/styles/colors.dart';

import '../../../../../shared/constants.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Visibility(
        visible: !controller.isLoading.value,
        replacement: const Center(child: CircularProgressIndicator()),
        child: SingleChildScrollView(
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
                margin: const EdgeInsets.only(top: 16, left: 25),
                child: const Text(
                  "Email / Phone number",
                  style: TextStyle(
                    fontFamily: 'Questrial',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: SGColors.white,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 12, left: 25, right: 18),
                child: TextFormField(
                  controller: controller.emailController,
                  keyboardType: TextInputType.text,
                  cursorColor: SGColors.white,
                  style: const TextStyle(
                      color: SGColors.white,
                      fontFamily: 'Questrial',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontStyle: FontStyle.normal),
                  decoration: const InputDecoration(
                    prefixIcon:
                        Icon(Icons.manage_accounts, color: SGColors.white),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: SGColors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: SGColors.white),
                    ),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          width: 1,
                          color: SGColors.red,
                        )),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(
                        width: 1,
                        color: SGColors.red,
                      ),
                    ),
                    hintText: "Email / Phone number",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: SGColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 16, left: 25),
                child: const Text(
                  "Password",
                  style: TextStyle(
                    fontFamily: 'Questrial',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: SGColors.white,
                  ),
                ),
              ),
              Container(
                // height: 60,
                margin: const EdgeInsets.only(top: 12, left: 25, right: 18),
                child: TextFormField(
                  obscureText: controller.ishiddenPassword,
                  controller: controller.passwordController,
                  cursorColor: SGColors.white,
                  style: const TextStyle(
                      color: SGColors.white,
                      fontFamily: 'Questrial',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontStyle: FontStyle.normal),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock_outline_sharp,
                      color: SGColors.white,
                    ),
                    border: InputBorder.none,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: SGColors.white),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: SGColors.white),
                    ),
                    errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          width: 1,
                          color: SGColors.red,
                        )),
                    focusedErrorBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(
                        width: 1,
                        color: SGColors.red,
                      ),
                    ),
                    hintText: "Password",
                    hintStyle: const TextStyle(
                      fontFamily: 'Questrial',
                      color: SGColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                    suffixIcon: IconButton(
                        icon: Icon(controller.ishiddenPassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                        color: SGColors.white,
                        onPressed: () {
                          controller.ishiddenPassword =
                              !controller.ishiddenPassword;
                        }),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Please enter password";
                    }
                    return null;
                  },
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
                    color: const Color(0xff4048BF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 16, bottom: 16),
                      child: const Text(
                        "Log In",
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
                              Get.toNamed(Routes.signup);
                            },
                        ),
                      ],
                    ),
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
