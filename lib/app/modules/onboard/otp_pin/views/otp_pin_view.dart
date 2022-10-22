import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../styles/colors.dart';
import '../controllers/otp_pin_controller.dart';

class OtpPinView extends GetView<OtpPinController> {
  const OtpPinView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SGColors.black,
      appBar: AppBar(
        backgroundColor: SGColors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined, color: SGColors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Visibility(
        visible: !controller.isLoading.value,
        replacement: const Center(child: CircularProgressIndicator()),
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 16, left: 28),
                  child: const Text(
                    "Verify Your Authenticity",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: SGColors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 16, left: 28),
                  child: const Text(
                    "We sent an code",
                    style: TextStyle(
                        fontFamily: 'Questrial',
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                        color: SGColors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 28),
                            height: 40,
                          ),
                          Form(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 25),
                              child: PinCodeTextField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                appContext: context,
                                pastedTextStyle: const TextStyle(
                                  color: SGColors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                length: 6,
                                obscureText: false,
                                textStyle:
                                    const TextStyle(color: SGColors.white),
                                blinkWhenObscuring: true,
                                animationType: AnimationType.fade,

                                pinTheme: PinTheme(
                                    shape: PinCodeFieldShape.box,
                                    borderRadius: BorderRadius.circular(5),
                                    fieldHeight: 50,
                                    fieldWidth: 50,
                                    activeFillColor: SGColors.black,
                                    inactiveFillColor: SGColors.black,
                                    activeColor: SGColors.white,
                                    borderWidth: 1,
                                    selectedFillColor: SGColors.black,
                                    selectedColor: SGColors.white,
                                    inactiveColor: SGColors.white),

                                cursorColor: SGColors.white,
                                animationDuration:
                                    const Duration(milliseconds: 300),
                                enableActiveFill: true,
                                controller: controller.otpController,
                                keyboardType: TextInputType.number,
                                boxShadows: const [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    color: Colors.black12,
                                    blurRadius: 10,
                                  )
                                ],
                                // onTap: () {
                                //   print("Pressed");
                                // },
                                onChanged: (value) {
                                  debugPrint(value);
                                  // setState(() {
                                  //   currentText = value;
                                  // });
                                },
                                beforeTextPaste: (text) {
                                  debugPrint("Allowing to paste $text");
                                  return true;
                                },
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(top: 33, left: 28),
                            child: RichText(
                              text: const TextSpan(
                                text: "Code not received? ",
                                style: TextStyle(
                                  fontFamily: 'Questrial',
                                  color: SGColors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Send again",
                                    style: TextStyle(
                                      fontFamily: 'Questrial',
                                      color: SGColors.skyBlue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Container(
                          //   margin: EdgeInsets.only(top: 10, left: 28),
                          //   child: Center(
                          //     child: ElevatedButton(
                          //       onPressed: () {
                          //         showDialog(
                          //           context: context,
                          //           builder: (ctx) => AlertDialog(
                          //             backgroundColor: Colors.black,
                          //             title: const Text(
                          //               "Allow the application to read the messege and enter the code",
                          //               style: TextStyle(
                          //                   fontSize: 16,
                          //                   fontFamily: 'Questrial',
                          //                   color: Colors.white),
                          //             ),
                          //             content: const Text(
                          //               "Code 2420 for confirmation in the aplication",
                          //               style: TextStyle(
                          //                   fontSize: 14,
                          //                   fontFamily: 'Questrial',
                          //                   color: Colors.white),
                          //               textAlign: TextAlign.center,
                          //             ),
                          //             actions: <Widget>[
                          //               Row(
                          //                 children: [
                          //                   Expanded(
                          //                     flex: 1,
                          //                     child: TextButton(
                          //                       onPressed: () {
                          //                         Navigator.of(ctx).pop();
                          //                       },
                          //                       child: Container(
                          //                         //alignment: Alignment.topRight,
                          //                         // color: Color(0xff4048BF),
                          //                         padding: const EdgeInsets.only(
                          //                             top: 10, right: 50, left: 5,  bottom: 10),
                          //                         child: const Text(
                          //                           "Reject",
                          //                           style: TextStyle(color: Colors.white),
                          //                           textAlign: TextAlign.center,
                          //                         ),
                          //                       ),
                          //                     ),
                          //                   ),
                          //                   Expanded(
                          //                     flex: 1,
                          //                     child: TextButton(
                          //                       onPressed: () {
                          //                         Navigator.of(ctx).pop();
                          //                       },
                          //                       child: Container(
                          //                         // decoration: BoxDecoration,
                          //                         alignment: Alignment.topLeft,
                          //                         color: Color(0xff4048BF),
                          //                         padding: const EdgeInsets.only(
                          //                             top: 10, left: 50,  bottom: 10),
                          //                         child: const Text(
                          //                           "Allow",
                          //                           style: TextStyle(color: Colors.white),
                          //                         ),
                          //                       ),
                          //                     ),
                          //                   ),
                          //                 ],
                          //               ),
                          //             ],
                          //           ),
                          //         );
                          //       },
                          //       child: const Text("Show alert Dialog box"),
                          //     ),
                          //   ),
                          // ),
                          // Center(
                          //   child: Container(
                          //     alignment: Alignment.center,
                          //     margin: EdgeInsets.only(top: 30, left: 44),
                          //     child: const Text(
                          //       "Verifying your OTP Code.....",
                          //       style: TextStyle(
                          //           fontFamily: 'Questrial',
                          //           fontSize: 20,
                          //           fontWeight: FontWeight.w500,
                          //           fontStyle: FontStyle.normal,
                          //           color: Colors.white),
                          //       textAlign: TextAlign.center,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
