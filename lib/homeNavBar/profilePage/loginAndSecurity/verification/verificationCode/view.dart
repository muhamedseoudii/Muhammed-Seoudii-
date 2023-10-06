import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:jobsque/homeNavBar/profilePage/loginAndSecurity/verification/pinCode/view.dart';

import '../../../../../core/design/customizedButtom/view.dart';
import '../../../../../core/logic/helper_methods.dart';

class VerificationCodeView extends StatefulWidget {
  const VerificationCodeView({Key? key}) : super(key: key);

  @override
  State<VerificationCodeView> createState() => _VerificationCodeViewState();
}

class _VerificationCodeViewState extends State<VerificationCodeView> {
  FocusNode focusNode = FocusNode();
  final formkey = GlobalKey<FormState>();
  TextEditingController controller1 = TextEditingController();
  bool obscureT = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15.sp, top: 24.sp, left: 15.sp),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(
                        "assets/icons/arrow-left.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    SizedBox(width: 50.w),
                    Text(
                      textAlign: TextAlign.center,
                      "Two-step verification",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36.h),
              Padding(
                padding: EdgeInsets.only(left: 24.sp, right: 24.sp),
                child: Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add phone number",
                        style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        "We will send a verification code to this number",
                        style: TextStyle(
                          color: Color(0xff6B7280),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        height: 70.h,
                        width: 327.w,
                        child: IntlPhoneField(
                          dropdownIconPosition: IconPosition.trailing,
                          keyboardType: TextInputType.number,
                          focusNode: focusNode,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffD1D5DB), width: 1),
                            ),
                          ),
                          languageCode: "en",
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                          onCountryChanged: (country) {
                            print('Country changed to: ' + country.name);
                          },
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "Enter your password",
                        style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 80.h,
                        width: 327.w,
                        child: TextFormField(
                          controller: controller1,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Color(0xff9CA3AF),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            prefixIcon: SvgPicture.asset("assets/icons/lock.svg",
                                fit: BoxFit.scaleDown),
                            suffixIcon: IconButton(
                              icon: Icon(obscureT
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined),
                              onPressed: () {
                                setState(() {
                                  obscureT = !obscureT;
                                });
                              },
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Color(0xffD1D5DB), width: 3),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF472B)),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Color(0xffFF472B), width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide:
                              BorderSide(color: Color(0xffD1D5DB), width: 2),
                            ),
                          ),
                          obscureText: !(obscureT && true),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a password';
                            } else if (value.length < 8) {
                              return 'Password must be at least 8 characters';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 365.h),
                      CustomizeButton(
                        text: "Send Code",
                        color: Color(0xff3366FF),
                        color1: Color(0xffFFFFFF),
                        size: 16,
                        OnClick: () {
                          if (formkey.currentState!.validate()) {
                            // Passwords are valid and match
                            // Perform further actions like saving the password
                            navigateTo(context, PinCodeView());
                          }
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
