import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/homeNavBar/profilePage/loginAndSecurity/verification/verificationCode/view.dart';

class VerificationMethodView extends StatefulWidget {
  const VerificationMethodView({Key? key}) : super(key: key);

  @override
  State<VerificationMethodView> createState() => _VerificationMethodViewState();
}

class _VerificationMethodViewState extends State<VerificationMethodView> {
  bool isToggle = false;

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
                          GestureDetector(
                            onTap: () {
                              isToggle = !isToggle;
                              setState(() {});
                            },
                            child: isToggle
                                ? SvgPicture.asset(
                                    "assets/icons/ToggleOn.svg",
                                    fit: BoxFit.scaleDown,
                                  )
                                : SvgPicture.asset(
                                    "assets/icons/ToggleOff.svg",
                                    fit: BoxFit.scaleDown,
                                  ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Text(
                    'Select a verification method',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Color(0xff111827),
                      fontWeight: FontWeight.w400,
                      wordSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: 330.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffFFFFFF),
                        border: Border.all(
                          color: Color(0xffD1D5DB),
                        )),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 16.sp, right: 16.sp, top: 18.sp, bottom: 18.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Telephone number (SMS)',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/icons/arrow-down.svg",
                            width: 20.w,
                            height: 20.h,
                            color: Color(0xff111827),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Note : Turning this feature will sign you out anywhere\nyou’re currently signed in. We will then require you to\nenter a verification code the first time you sign with a\nnew device or Joby mobile application.',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xff6B7280),
                      fontWeight: FontWeight.w400,
                      wordSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 330.h),
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
                          navigateTo(context, VerificationCodeView());
                        },
                        child: Text(
                          "Next",
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
            )
          ],
        ),
      ),
    );
  }
}
