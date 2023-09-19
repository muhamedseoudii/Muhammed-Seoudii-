import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/homeNavBar/profilePage/loginAndSecurity/changePass/view.dart';
import 'package:jobsque/homeNavBar/profilePage/loginAndSecurity/emailAddress/view.dart';
import 'package:jobsque/homeNavBar/profilePage/loginAndSecurity/phoneNumber/view.dart';
import 'package:jobsque/homeNavBar/profilePage/loginAndSecurity/verification/view.dart';

import '../../../core/logic/helper_methods.dart';

class LoginAndSecurityView extends StatelessWidget {
  const LoginAndSecurityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  SizedBox(width: 60.w),
                  Text(
                    textAlign: TextAlign.center,
                    "Login and security",
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
            SizedBox(height: 32.h),
            Container(
              height: 36.h,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffE5E7EB),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(width: 24.w),
                    Text(
                      'Account access',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff6B7280),
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h),
            Padding(
              padding:  EdgeInsets.only(right: 24.sp,left: 20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                       navigateTo(context, EmailAddressView());
                    },
                    child: Container(
                      width: 330.w,
                      height: 60.h,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email address',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'rafifdian12@gmail.com',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color(0xff6B7280),
                                  fontWeight: FontWeight.w400,
                                  wordSpacing: 1,
                                ),
                              ),
                              SizedBox(width: 12.w),
                              SvgPicture.asset(
                                "assets/icons/arrow-right1.svg",
                                fit: BoxFit.scaleDown,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xffE5E7EB),
                    thickness: 1.sp,
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateTo(context, PhoneNumberView());
                    },
                    child: Container(
                      width: 330.w,
                      height: 60.h,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Phone number',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/icons/arrow-right1.svg",
                            fit: BoxFit.scaleDown,
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xffE5E7EB),
                    thickness: 1.sp,
                  ),
                  GestureDetector(
                    onTap: () {
                       navigateTo(context, ChangePasswordView());
                    },
                    child: Container(
                      width: 330.w,
                      height: 60.h,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Change password',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/icons/arrow-right1.svg",
                            fit: BoxFit.scaleDown,
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xffE5E7EB),
                    thickness: 1.sp,
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateTo(context, VerificationView());
                    },
                    child: Container(
                      width: 330.w,
                      height: 60.h,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Two-step verification',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Non active',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color(0xff6B7280),
                                  fontWeight: FontWeight.w400,
                                  wordSpacing: 1,
                                ),
                              ),
                              SizedBox(width: 12.w),
                              SvgPicture.asset(
                                "assets/icons/arrow-right1.svg",
                                fit: BoxFit.scaleDown,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xffE5E7EB),
                    thickness: 1.sp,
                  ),
                  GestureDetector(
                    onTap: () {
                      // navigateTo(context, EditProfileView());
                    },
                    child: Container(
                      width: 330.w,
                      height: 60.h,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Face ID',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/icons/arrow-right1.svg",
                            fit: BoxFit.scaleDown,
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xffE5E7EB),
                    thickness: 1.sp,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
