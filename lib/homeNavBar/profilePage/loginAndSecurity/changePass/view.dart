import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {

  final foormkey = GlobalKey<FormState>();
  bool obscureT = false;
  bool obscureT2 = false;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  @override
  void dispose() {
    controller2.dispose();
    controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                    SizedBox(width: 60.w),
                    Text(
                      textAlign: TextAlign.center,
                      "Change password",
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
              SizedBox(height: 44.h),
              Padding(
                padding:  EdgeInsets.only(left: 24.sp,right: 24.sp),
                child: Form(
                  key: foormkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter your old password",
                        style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        height: 80.h,
                        width: 325.w,
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
                      Text(
                        "Enter your new password",
                        style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        width: 360,
                        height: 80,
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          controller: controller2,
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
                              borderSide: BorderSide(color: Color(0xffD1D5DB),width: 3),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF472B)),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF472B),width: 2),
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
                              return 'Please enter your password';
                            } else if (value.length < 8) {
                              return 'Password must be at least 8 characters';
                            }
                            return null;
                          },
                        ),
                      ),
                      Text(
                        "Confirm your new password",
                        style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        width: 360,
                        height: 80,
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          controller: controller3,
                          decoration: InputDecoration(
                            labelText: "Confirm Password",
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
                              icon: Icon(obscureT2
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined),
                              onPressed: () {
                                setState(() {
                                  obscureT2 = !obscureT2;
                                });
                              },
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD1D5DB),width: 3,style: BorderStyle.solid),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF472B)),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF472B),width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide:
                              BorderSide(color: Color(0xffD1D5DB), width: 2),
                            ),
                          ),
                          obscureText:!(obscureT2 && true),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please confirm your password';
                            } else if (value != controller2.text) {
                              return 'Both password must match';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 290.h),
                      Center(
                        child: Container(
                          height: 48,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xff3366FF),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            onPressed: () {
                              if (foormkey.currentState!.validate()) {
                                // Passwords are valid and match
                                // Perform further actions like saving the password
                                // navigateTo(context, PassResetSuccessview());
                              }
                            },
                            child: Text(
                              'Reset password',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
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