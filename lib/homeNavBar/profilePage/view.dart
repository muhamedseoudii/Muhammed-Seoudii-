import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/completeProfile/view.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/homeNavBar/profilePage/editProfile/view.dart';
import 'package:jobsque/homeNavBar/profilePage/helpCenter/view.dart';
import 'package:jobsque/homeNavBar/profilePage/language/view.dart';
import 'package:jobsque/homeNavBar/profilePage/loginAndSecurity/view.dart';
import 'package:jobsque/homeNavBar/profilePage/notificationsProfile/view.dart';
import 'package:jobsque/homeNavBar/profilePage/portfolioProfile/view.dart';
import 'package:jobsque/homeNavBar/profilePage/privacyPolicy/view.dart';
import 'package:jobsque/homeNavBar/profilePage/termsAndConditions/view.dart';

import 'package:jobsque/signUp/view.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SvgPicture.asset(
                "assets/icons/ProfileBackground.svg",
                fit: BoxFit.fill,
                width: 375.sp,
                height: 195.sp,
              ),
              Padding(
                padding: EdgeInsets.all(24.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Text(
                      textAlign: TextAlign.center,
                      "Profile",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        navigateTo(context, SignUpView(), keepHistory: false);
                      },
                      icon: SvgPicture.asset(
                        "assets/icons/logout.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 160.h),
                  Center(
                    child: Image.asset(
                      "assets/images/Profile.png",
                      fit: BoxFit.scaleDown,
                      height: 90.h,
                      width: 90.w,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Rafif Dian Axelingga",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Senior UI/UX Designer",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Center(
                    child: Container(
                      width: 327.w,
                      height: 78.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffFAFAFA),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.sp),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  "Applied",
                                  style: TextStyle(
                                    color: Color(0xff6B7280),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  textAlign: TextAlign.center,
                                  "46",
                                  style: TextStyle(
                                    color: Color(0xff111827),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset("assets/icons/Vector61.svg",
                                fit: BoxFit.scaleDown),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  "Reviewed",
                                  style: TextStyle(
                                    color: Color(0xff6B7280),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  textAlign: TextAlign.center,
                                  "23",
                                  style: TextStyle(
                                    color: Color(0xff111827),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset("assets/icons/Vector61.svg",
                                fit: BoxFit.scaleDown),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  "Contacted",
                                  style: TextStyle(
                                    color: Color(0xff6B7280),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  textAlign: TextAlign.center,
                                  "16",
                                  style: TextStyle(
                                    color: Color(0xff111827),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 28.h),
                  Padding(
                    padding: EdgeInsets.only(left: 24.sp, right: 24.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          "About",
                          style: TextStyle(
                            color: Color(0xff6B7280),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            navigateTo(context, CompleteProfileView());
                          },
                          child: Text(
                            textAlign: TextAlign.center,
                            "Edit",
                            style: TextStyle(
                              color: Color(0xff3366FF),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: EdgeInsets.only(left: 24.sp, right: 24.sp),
                    child: Text(
                      textAlign: TextAlign.start,
                      "I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have\nexperience designing UI Design for approximately\n1 year. I am currently joining the Vektora studio team\nbased in Surakarta, Indonesia.I am a person who has a\nhigh spirit and likes to work to achieve what I dream of.",
                      style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 36.h),
                  Container(
                    height: 36.h,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xffE5E7EB),
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(width: 24.w),
                          Text(
                            'General',
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
                  SizedBox(height: 16.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            navigateTo(context, EditProfileView());
                          },
                          child: Container(
                            width: 330.w,
                            height: 60.h,
                            color: Color(0xffFFFFFF),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/icon1.svg",
                                  fit: BoxFit.scaleDown,
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  'Edit Profile',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color(0xff111827),
                                    fontWeight: FontWeight.w400,
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(width: 194.w),
                                SvgPicture.asset(
                                  "assets/icons/arrow-right1.svg",
                                  fit: BoxFit.scaleDown,
                                ),
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
                             navigateTo(context, PortfolioProfileView());
                          },
                          child: Container(
                            width: 330.w,
                            height: 60.h,
                            color: Color(0xffFFFFFF),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/icon2.svg",
                                  fit: BoxFit.scaleDown,
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  'Portfolio',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color(0xff111827),
                                    fontWeight: FontWeight.w400,
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(width: 211.w),
                                SvgPicture.asset(
                                  "assets/icons/arrow-right1.svg",
                                  fit: BoxFit.scaleDown,
                                ),
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
                             navigateTo(context, LanguageView());
                          },
                          child: Container(
                            width: 330.w,
                            height: 60.h,
                            color: Color(0xffFFFFFF),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/icon3.svg",
                                  fit: BoxFit.scaleDown,
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  'Langauge',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color(0xff111827),
                                    fontWeight: FontWeight.w400,
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(width: 199.w),
                                SvgPicture.asset(
                                  "assets/icons/arrow-right1.svg",
                                  fit: BoxFit.scaleDown,
                                ),
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
                            navigateTo(context, NotificationProfileView());
                          },
                          child: Container(
                            width: 330.w,
                            height: 60.h,
                            color: Color(0xffFFFFFF),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/icon4.svg",
                                  fit: BoxFit.scaleDown,
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  'Notification',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color(0xff111827),
                                    fontWeight: FontWeight.w400,
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(width: 189.w),
                                SvgPicture.asset(
                                  "assets/icons/arrow-right1.svg",
                                  fit: BoxFit.scaleDown,
                                ),
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
                             navigateTo(context, LoginAndSecurityView());
                          },
                          child: Container(
                            width: 330.w,
                            height: 60.h,
                            color: Color(0xffFFFFFF),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/icon5.svg",
                                  fit: BoxFit.scaleDown,
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  'Login and security',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color(0xff111827),
                                    fontWeight: FontWeight.w400,
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(width: 143.w),
                                SvgPicture.asset(
                                  "assets/icons/arrow-right1.svg",
                                  fit: BoxFit.scaleDown,
                                ),
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
                  ),
                  SizedBox(height: 25.h),
                  Container(
                    height: 36.h,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xffE5E7EB),
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(width: 24.w),
                          Text(
                            'Others',
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
                  SizedBox(height: 16.h),
                  Padding(
                    padding: EdgeInsets.only(left: 24.sp, right: 20.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                  'Accesibility',
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
                                ),
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
                            navigateTo(context, HelpCenterView());
                          },
                          child: Container(
                            width: 330.w,
                            height: 60.h,
                            color: Color(0xffFFFFFF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Help Center',
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
                                ),
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
                            navigateTo(context, TermsAndConditionsView());
                          },
                          child: Container(
                            width: 330.w,
                            height: 60.h,
                            color: Color(0xffFFFFFF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Terms & Conditions',
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
                                ),
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
                            navigateTo(context, PrivacyPolicyView());
                          },
                          child: Container(
                            width: 330.w,
                            height: 60.h,
                            color: Color(0xffFFFFFF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Privacy Policy',
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
                                ),
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
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
