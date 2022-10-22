import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:p2p/shared/constants.dart';

import '../../../../routes/app_pages.dart';
import '../../../../styles/colors.dart';
import '../controllers/signup_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SGColors.black,
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
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
                      color: SGColors.white),
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
                    color: SGColors.white,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 35, left: 25),
                child: const Text(
                  "First Name",
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
                  controller: controller.firstnameController,
                  keyboardType: TextInputType.text,
                  cursorColor: SGColors.white,
                  style: const TextStyle(
                      color: SGColors.white,
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
                    // border: OutlineInputBorder(),
                    hintText: "Iaamamur Rahman",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: SGColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Enter your name";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 16, left: 25),
                child: const Text(
                  "Last Name",
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
                  controller: controller.lastNameController,
                  keyboardType: TextInputType.text,
                  cursorColor: SGColors.white,
                  style: const TextStyle(
                      color: SGColors.white,
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

                    // border: OutlineInputBorder(),
                    hintText: "Rafid",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: SGColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Enter your name";
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
                        Icon(Icons.email_outlined, color: SGColors.white),
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
                    hintText: "rafidrahman38@gmail.com",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: SGColors.white,
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
                    color: SGColors.white,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 12, left: 25, right: 18),
                child: TextFormField(
                  controller: controller.phoneNumberController,
                  keyboardType: TextInputType.text,
                  cursorColor: SGColors.white,
                  style: const TextStyle(
                      color: SGColors.white,
                      fontFamily: 'Questrial',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontStyle: FontStyle.normal),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone_android_outlined,
                        color: SGColors.white),
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
                    hintText: "+8801310002563",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: SGColors.white,
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
                  "NID/ PASSPORT / BIRTH CERT.",
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
                padding: const EdgeInsets.only(top: 10, left: 25, right: 18),
                child: TextFormField(
                  controller: controller.nidOrPassportOrBirthCertController,
                  keyboardType: TextInputType.text,
                  cursorColor: SGColors.white,
                  style: const TextStyle(
                      color: SGColors.white,
                      fontFamily: 'Questrial',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontStyle: FontStyle.normal),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.perm_identity_outlined,
                      color: SGColors.white,
                    ),
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

                    // border: OutlineInputBorder(),
                    hintText: "xxx-xxx-xxxx",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: SGColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Enter your name";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 16, left: 25),
                child: const Text(
                  "Date Of Birth",
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
                child: TextField(
                  style: const TextStyle(
                    fontFamily: 'Questrial',
                    color: SGColors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  maxLines: 1,
                  controller: controller.dateOfBirthController,
                  readOnly: true,
                  showCursor: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.perm_identity_outlined,
                      color: SGColors.white,
                    ),
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
                    hintText: "00-00-0000",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: SGColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                      ),
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext builder) {
                        return Container(
                          height: 320,
                          child: SingleChildScrollView(
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.only(
                                            left: 30),
                                        child: const Text(
                                          'Date Of Birth',
                                          style: TextStyle(
                                                color: SGColors.black,
                                                fontFamily: 'Questrial',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          if (controller.temporaryDate != null) {
                                            controller.eventDate = controller.temporaryDate;
                                          }
                                          controller.dateOfBirthController.text = controller.eventDate!
                                              .toString();
                                          // checkHasDataChanged();
                                          Navigator.of(context).pop();
                                        },
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              right: 30),
                                          child: const Text(
                                            'Confirm',
                                            style: TextStyle(
                                              color: SGColors.black,
                                              fontFamily: 'Questrial',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontStyle: FontStyle.normal),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                 // const SizedBox(height: 6),
                                  Container(
                                    height: 300,
                                    child: CupertinoDatePicker(
                                      mode: CupertinoDatePickerMode.date,
                                      initialDateTime: controller.eventDate,
                                      onDateTimeChanged: (DateTime date) {
                                        controller.temporaryDate = date;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ).then(
                      (dynamic value) {
                        controller.temporaryDate = null;
                      },
                    );
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 16, left: 25),
                child: const Text(
                  "Profession",
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
                padding: const EdgeInsets.only(top: 10, left: 25, right: 18),
                child: TextFormField(
                  controller: controller.professionController,
                  keyboardType: TextInputType.text,
                  cursorColor: SGColors.white,
                  style: const TextStyle(
                      color: SGColors.white,
                      fontFamily: 'Questrial',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontStyle: FontStyle.normal),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.work_outline_outlined,
                      color: SGColors.white,
                    ),
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

                    // border: OutlineInputBorder(),
                    hintText: "Businessman",
                    hintStyle: TextStyle(
                      fontFamily: 'Questrial',
                      color: SGColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Enter your name";
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
                    color: SGColors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12, left: 25, right: 18),
                child: TextFormField(
                  obscureText: controller.ishiddenConfirmPassword,
                  controller: controller.confirmPasswordController,
                  cursorColor: SGColors.white,
                  style: const TextStyle(
                      color: SGColors.white,
                      fontFamily: 'Questrial',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontStyle: FontStyle.normal),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline_sharp,
                        color: SGColors.white),
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

                    // border: OutlineInputBorder(),
                    hintText: "Confirm Password",
                    hintStyle: const TextStyle(
                      fontFamily: 'Questrial',
                      color: SGColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                    suffixIcon: IconButton(
                        icon: Icon(controller.ishiddenConfirmPassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                        color: SGColors.white,
                        onPressed: () {
                          controller.ishiddenConfirmPassword =
                              !controller.ishiddenConfirmPassword;
                          //  setState(() {});
                        }),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Please re-enter password";
                    }
                    if (controller.passwordController.text !=
                        controller.confirmPasswordController.text) {
                      return "Password do not match";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Expanded(
                      flex: 14,
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: const Text(
                          "By creating an account, you are accepting our Terms & Conditions",
                          style: TextStyle(
                              fontFamily: 'Questrial',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: SGColors.white),
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
                  onPressed: controller.onSignupPressed,
                  color: SGColors.blue,
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
                                color: SGColors.white,
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
                            margin: const EdgeInsets.only(left: 10),
                            //alignment: Alignment.centerRight,
                            child: const Icon(
                              Icons.arrow_forward,
                              color: SGColors.white,
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(right: 15),
                          //alignment: Alignment.centerRight,
                          child: const Image(
                            image: AssetImage(AssetConst.icMark),
                          ),
                        ),
                      ),
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
                          color: SGColors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                        children: [
                          TextSpan(
                              text: "Sign in",
                              style: const TextStyle(
                                fontFamily: 'Questrial',
                                color: SGColors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              ),
                              recognizer: TapGestureRecognizer()
                              //  ..onTap = () => Get.toNamed(Routes.signin);
                              ),
                        ]),
                  ),
                ),
              ),
              const SizedBox(height: 100)
            ],
          )),
        ),
      ),
    );
  }
}
