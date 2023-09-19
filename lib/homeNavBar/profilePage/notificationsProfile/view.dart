import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NotificationProfileView extends StatefulWidget {
  const NotificationProfileView({Key? key}) : super(key: key);

  @override
  State<NotificationProfileView> createState() =>
      _NotificationProfileViewState();
}

class _NotificationProfileViewState extends State<NotificationProfileView> {
  bool isToggle = false;
  bool isToggle1 = false;
  bool isToggle2 = false;
  bool isToggle3 = false;
  bool isToggle4 = false;
  bool isToggle5 = true;
  bool isToggle6 = true;
  bool isToggle7 = true;

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
                    SizedBox(width: 80.w),
                    Text(
                      textAlign: TextAlign.center,
                      "Notification",
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
                        'Job notification',
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
                    Container(
                      width: 330.w,
                      height: 60.h,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Your Job Search Alert',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w400,
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
                    Divider(
                      color: Color(0xffE5E7EB),
                      thickness: 1.sp,
                    ),
                    Container(
                      width: 330.w,
                      height: 60.h,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Job Application Update',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              isToggle1 = !isToggle1;
                              setState(() {});
                            },
                            child: isToggle1
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
                    Divider(
                      color: Color(0xffE5E7EB),
                      thickness: 1.sp,
                    ),
                    Container(
                      width: 330.w,
                      height: 60.h,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Job Application Reminders',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              isToggle2 = !isToggle2;
                              setState(() {});
                            },
                            child: isToggle2
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
                    Divider(
                      color: Color(0xffE5E7EB),
                      thickness: 1.sp,
                    ),
                    Container(
                      width: 330.w,
                      height: 60.h,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jobs You May Be Interested In',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              isToggle3 = !isToggle3;
                              setState(() {});
                            },
                            child: isToggle3
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
                    Divider(
                      color: Color(0xffE5E7EB),
                      thickness: 1.sp,
                    ),
                    Container(
                      width: 330.w,
                      height: 60.h,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Job Seeker Updates',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              isToggle4 = !isToggle4;
                              setState(() {});
                            },
                            child: isToggle4
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
                    Divider(
                      color: Color(0xffE5E7EB),
                      thickness: 1.sp,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.sp),
              Container(
                height: 36.h,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffE5E7EB),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(width: 24.w),
                      Text(
                        'Other notification',
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
              SizedBox(height: 12.sp),
              Padding(
                padding:  EdgeInsets.only(right: 24.sp,left: 20.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 330.w,
                      height: 60.h,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Show Profile',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              isToggle5 = !isToggle5;
                              setState(() {});
                            },
                            child: isToggle5
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
                    Divider(
                      color: Color(0xffE5E7EB),
                      thickness: 1.sp,
                    ),
                    Container(
                      width: 330.w,
                      height: 60.h,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'All Message',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              isToggle6 = !isToggle6;
                              setState(() {});
                            },
                            child: isToggle6
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
                    Divider(
                      color: Color(0xffE5E7EB),
                      thickness: 1.sp,
                    ),
                    Container(
                      width: 330.w,
                      height: 60.h,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Message Nudges',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff111827),
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              isToggle7 = !isToggle;
                              setState(() {});
                            },
                            child: isToggle7
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
      ),
    );
  }
}
