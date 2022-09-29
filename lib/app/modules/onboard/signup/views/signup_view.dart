import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:p2p/shared/constants.dart';

import '../controllers/signup_controller.dart';

class SignUpView extends GetView<SignUpController> {
  SignUpView({Key? key}) : super(key: key);

  bool value = false;

  bool ishiddenPassword = true;
  bool ishiddenConfirmPassword = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formKey,
            child: (Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 69, left: 25, right: 119),
                  child: const Text(
                    "Getting Started",
                    style: TextStyle(
                        fontFamily: 'Questrial',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 19, left: 25),
                  child: const Text(
                    "Create an account to get started",
                    style: TextStyle(
                      fontFamily: 'Questrial',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 35, left: 25),
                  child: const Text(
                    "Full Name",
                    style: TextStyle(
                      fontFamily: 'Questrial',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 12, left: 25, right: 18),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.white,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Questrial',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontStyle: FontStyle.normal),
                    decoration: const InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Image(
                          image: AssetImage(AssetConst.icUser),
                        ),
                      ),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.red,
                          )),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.red,
                        ),
                      ),

                      // border: OutlineInputBorder(),
                      hintText: "Iaamamur Rahman Rafid",
                      hintStyle: TextStyle(
                        fontFamily: 'Questrial',
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter name";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 16, left: 25),
                  child: const Text(
                    "Email",
                    style: TextStyle(
                      fontFamily: 'Questrial',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 12, left: 25, right: 18),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.white,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Questrial',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontStyle: FontStyle.normal),
                    decoration: const InputDecoration(
                      prefixIcon:
                          Icon(Icons.email_outlined, color: Colors.white),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.red,
                          )),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.red,
                        ),
                      ),
                      hintText: "rafidrahman38@gmail.com",
                      hintStyle: TextStyle(
                        fontFamily: 'Questrial',
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter email";
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+[a-z]")
                          .hasMatch(value)) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 16, left: 25),
                  child: const Text(
                    "Phone Number",
                    style: TextStyle(
                      fontFamily: 'Questrial',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 12, left: 25, right: 18),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.white,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Questrial',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontStyle: FontStyle.normal),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone_android_outlined,
                          color: Colors.white),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.red,
                          )),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.red,
                        ),
                      ),
                      hintText: "+8801310002563",
                      hintStyle: TextStyle(
                        fontFamily: 'Questrial',
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter you phone number";
                      }
                      if (!RegExp('(?:(?:\\+|00)88|01)?\\d{11}')
                          .hasMatch(value)) {
                        return "Please enter valid phone number";
                      }
                      return null;
                    },
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
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  // height: 60,
                  margin: const EdgeInsets.only(top: 12, left: 25, right: 18),
                  child: TextFormField(
                    obscureText: ishiddenPassword,
                    controller: _password,
                    cursorColor: Colors.white,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Questrial',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontStyle: FontStyle.normal),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock_outline_sharp,
                        color: Colors.white,
                      ),
                      border: InputBorder.none,
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.red,
                          )),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.red,
                        ),
                      ),
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        fontFamily: 'Questrial',
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(ishiddenPassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                          color: Colors.white,
                          onPressed: () {
                            ishiddenPassword = !ishiddenPassword;
                            // setState(() {});
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
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 16, left: 25),
                  child: const Text(
                    "Confirm Password",
                    style: TextStyle(
                      fontFamily: 'Questrial',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12, left: 25, right: 18),
                  child: TextFormField(
                    obscureText: ishiddenConfirmPassword,
                    controller: _confirmPassword,
                    cursorColor: Colors.white,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Questrial',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontStyle: FontStyle.normal),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_outline_sharp,
                          color: Colors.white),
                      border: InputBorder.none,
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.red,
                          )),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.red,
                        ),
                      ),

                      // border: OutlineInputBorder(),
                      hintText: "Confirm Password",
                      hintStyle: const TextStyle(
                        fontFamily: 'Questrial',
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(ishiddenConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                          color: Colors.white,
                          onPressed: () {
                            ishiddenConfirmPassword = !ishiddenConfirmPassword;
                            //  setState(() {});
                          }),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please re-enter password";
                      }
                      if (_password.text != _confirmPassword.text) {
                        return "Password do not match";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 20, left: 25),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Checkbox(
                          checkColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                            (states) =>
                                BorderSide(width: 1.0, color: Colors.white),
                          ),
                          value: this.value,
                          onChanged: (bool? value) {
                            // setState(() {
                            //   this.value = value!;
                            // });
                          },
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 14,
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: const Text(
                            "By creating an account, you are to our "
                            "         Terms & Conditions",
                            style: TextStyle(
                                fontFamily: 'Questrial',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 20, left: 40, right: 40),
                  child: MaterialButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SignInScreen()),
                      // );
                      // if (_formKey.currentState!.validate()) {
                      //   print("Sucessfull");
                      //   return;
                      // } else {
                      //   print("Not worked");
                      // }
                    },
                    color: Color(0xff4048BF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(
                                top: 16, left: 60, bottom: 16),
                            child: const Text(
                              "Sign up",
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
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              //alignment: Alignment.centerRight,
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                                margin: EdgeInsets.only(right: 15),
                                //alignment: Alignment.centerRight,
                                child: Image(
                                  image: AssetImage("assets/].png"),
                                ))),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
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
                                text: "Sign in",
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
              ],
            )),
          ),
        ),
      ),
    );
  }
}
