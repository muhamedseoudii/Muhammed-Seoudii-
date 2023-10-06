import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/homeNavBar/profilePage/loginAndSecurity/verification/verificationMethod/view.dart';

import '../../../../core/design/customizedButtom/view.dart';

class VerificationView extends StatefulWidget {
  const VerificationView({Key? key}) : super(key: key);

  @override
  State<VerificationView> createState() => _VerificationViewState();
}

class _VerificationViewState extends State<VerificationView> {
  bool _switchValue = false;

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
            SizedBox(height: 44.h),
            Padding(
              padding: EdgeInsets.only(left: 24.sp, right: 24.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 330.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffFFFFFF),
                        border: Border.all(
                          color: Color(0xffD1D5DB),
                        )),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 14.sp, right: 14.sp, top: 12.sp, bottom: 12.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Secure your account with\ntwo-step verification',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff6B7280),
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
                          Transform.scale(
                            scaleX: 1.0.sp,
                            scaleY: 0.9.sp,
                            child: CupertinoSwitch(
                              activeColor: Color(0xff3366FF),
                              thumbColor: Color(0xffD6E4FF),
                              value: _switchValue,
                              onChanged: (bool value) {
                                setState(() {
                                  _switchValue = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Container(
                    width: 295.w,
                    height: 65.h,
                    color: Color(0xffFFFFFF),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/lockIcon.svg",fit: BoxFit.scaleDown),
                        Text(
                          'Two-step verification provides additional\nsecurity by asking for a verification code\nevery time you log in on another device.',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff6B7280),
                            fontWeight: FontWeight.w400,
                            wordSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: 295.w,
                    height: 65.h,
                    color: Color(0xffFFFFFF),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/phoneIcon.svg",fit: BoxFit.scaleDown),
                        Text(
                          'Adding a phone number or using an\nauthenticator will help keep your account\nsafe from harm.',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff6B7280),
                            fontWeight: FontWeight.w400,
                            wordSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 353.h),
                  CustomizeButton(
                    text: "Next",
                    color: Color(0xff3366FF),
                    color1: Color(0xffFFFFFF),
                    size: 16,
                    OnClick: () {
                      navigateTo(context, VerificationMethodView());
                    },
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
