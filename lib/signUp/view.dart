import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/forgetPass/view.dart';

import '../core/design/customizedButtom/view.dart';
import '../createAccount/view.dart';
import 'cubit.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginCubit cubit = BlocProvider.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/images/Jobsque.png",
                      fit: BoxFit.scaleDown,
                      height: 19,
                      width: 81,
                    ),
                  ],
                ),
                SizedBox(height: 45.h),
                Text(
                  "Login",
                  style: TextStyle(
                    color: Color(0xff111827),
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Please login to find your dream job",
                  style: TextStyle(
                    color: Color(0xff6B7280),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 45.h),
                BlocBuilder(
                    bloc: cubit,
                    builder: (context, state) {
                      return Form(
                        key: cubit.foormkey,
                        child: Column(
                          children: [
                            Container(
                              height: 80.h,
                              width: 325.w,
                              child: TextFormField(
                                controller: cubit.controller1,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Username",
                                  hintStyle: TextStyle(
                                    color: Color(0xff9CA3AF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  prefixIcon: SvgPicture.asset(
                                      "assets/icons/profile.svg",
                                      fit: BoxFit.scaleDown),
                                  filled: true,
                                  fillColor: Color(0xffFFFFFF),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.r)),
                                    borderSide: BorderSide(
                                        color: Color(0xffD1D5DB), width: 3),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.r)),
                                    borderSide:
                                        BorderSide(color: Color(0xffFF472B)),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.r)),
                                    borderSide: BorderSide(
                                        color: Color(0xffFF472B), width: 2),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        BorderSide(color: Color(0xffD1D5DB)),
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your Username';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(height: 16.h),
                            Container(
                              height: 80.h,
                              width: 325.w,
                              child: TextFormField(
                                controller: cubit.controller2,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Color(0xff9CA3AF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  filled: true,
                                  fillColor: Color(0xffFFFFFF),
                                  prefixIcon: SvgPicture.asset(
                                      "assets/icons/lock.svg",
                                      fit: BoxFit.scaleDown),
                                  suffixIcon: IconButton(
                                    icon: Icon(cubit.obscureT
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined),
                                    onPressed: cubit.toggleDesign,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.r)),
                                    borderSide: BorderSide(
                                        color: Color(0xffD1D5DB), width: 3),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.r)),
                                    borderSide:
                                        BorderSide(color: Color(0xffFF472B)),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.r)),
                                    borderSide: BorderSide(
                                        color: Color(0xffFF472B), width: 2),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.r)),
                                    borderSide: BorderSide(
                                        color: Color(0xffD1D5DB), width: 2),
                                  ),
                                ),
                                obscureText: !(cubit.obscureT && true),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter a password';
                                  } else if (value.length < 6) {
                                    return 'Password must be at least 6 characters';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                SizedBox(height: 10.h),
                BlocBuilder(
                    bloc: cubit,
                    builder: (context, state) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            iconSize: 16,
                            visualDensity: VisualDensity.compact,
                            onPressed: cubit.toggleCheck,
                            icon: cubit.check
                                ? SvgPicture.asset(
                                    "assets/icons/Checkbox.svg",
                                  )
                                : SvgPicture.asset(
                                    "assets/icons/unCheckbox.svg",
                                  ),
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                              color: Color(0xff1F2937),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 93.w),
                          TextButton(
                            onPressed: () {
                              navigateTo(context, ForgetPasswordView());
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff3366FF),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                SizedBox(height: 120.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont’t have an account?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff9CA3AF),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, SignInView());
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3366FF),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                BlocBuilder(
                    bloc: cubit,
                    builder: (context, state) {
                      return cubit.isLoading
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : CustomizeButton(
                              text: "Login",
                              color: Color(0xff3366FF),
                              color1: Color(0xffFFFFFF),
                              size: 16,
                              OnClick: () {
                                if (cubit.foormkey.currentState!.validate()) {
                                  // Passwords are valid and match
                                  // Perform further actions like saving the password
                                  cubit.login(context);
                                  cubit.loginPrefs;
                                }
                              },
                            );
                    }),
                SizedBox(height: 20.h),
                Center(
                  child: SvgPicture.asset(
                    "assets/images/Or.svg",
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 156.h,
                      height: 50.w,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                    color: Color(0xffD1D5DB), width: 2)),
                            backgroundColor: Color(0xffFFFFFF),
                            fixedSize: Size.fromHeight(55)),
                        onPressed: () {
                          cubit.launchURL("www.google.com");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/google.png",
                                height: 25.h),
                            SizedBox(width: 20.w),
                            Text(
                              "Google",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09051C),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 21.w),
                    Container(
                      width: 156.h,
                      height: 50.w,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                    color: Color(0xffD1D5DB), width: 2)),
                            backgroundColor: Color(0xffFFFFFF),
                            fixedSize: Size.fromHeight(55)),
                        onPressed: () {
                          cubit.launchURL("www.facebook.com");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/facebook.png",
                                height: 25.h),
                            SizedBox(width: 20.w),
                            Text(
                              "Facebook",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff09051C),
                              ),
                            ),
                          ],
                        ),
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
