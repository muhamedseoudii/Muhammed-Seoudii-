import 'package:flutter/cupertino.dart';
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
  bool _switchValue = false;
  bool _switchValue1 = false;
  bool _switchValue2 = false;
  bool _switchValue3 = false;
  bool _switchValue4 = false;
  bool _switchValue5 = true;
  bool _switchValue6 = true;
  bool _switchValue7 = true;


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
                          Transform.scale(
                            scaleX: 1.0.sp,
                            scaleY: 0.9.sp,
                            child: CupertinoSwitch(
                              activeColor: Color(0xff3366FF),
                              thumbColor: Color(0xffD6E4FF),
                              value: _switchValue1,
                              onChanged: (bool value) {
                                setState(() {
                                  _switchValue1 = value;
                                });
                              },
                            ),
                          ),
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
                          Transform.scale(
                            scaleX: 1.0.sp,
                            scaleY: 0.9.sp,
                            child: CupertinoSwitch(
                              activeColor: Color(0xff3366FF),
                              thumbColor: Color(0xffD6E4FF),
                              value: _switchValue2,
                              onChanged: (bool value) {
                                setState(() {
                                  _switchValue2 = value;
                                });
                              },
                            ),
                          ),
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
                          Transform.scale(
                            scaleX: 1.0.sp,
                            scaleY: 0.9.sp,
                            child: CupertinoSwitch(
                              activeColor: Color(0xff3366FF),
                              thumbColor: Color(0xffD6E4FF),
                              value: _switchValue3,
                              onChanged: (bool value) {
                                setState(() {
                                  _switchValue3 = value;
                                });
                              },
                            ),
                          ),
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
                          Transform.scale(
                            scaleX: 1.0.sp,
                            scaleY: 0.9.sp,
                            child: CupertinoSwitch(
                              activeColor: Color(0xff3366FF),
                              thumbColor: Color(0xffD6E4FF),
                              value: _switchValue4,
                              onChanged: (bool value) {
                                setState(() {
                                  _switchValue4 = value;
                                });
                              },
                            ),
                          ),
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
                          Transform.scale(
                            scaleX: 1.0.sp,
                            scaleY: 0.9.sp,
                            child: CupertinoSwitch(
                              activeColor: Color(0xff3366FF),
                              thumbColor: Color(0xffD6E4FF),
                              value: _switchValue5,
                              onChanged: (bool value) {
                                setState(() {
                                  _switchValue5 = value;
                                });
                              },
                            ),
                          ),
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
                          Transform.scale(
                            scaleX: 1.0.sp,
                            scaleY: 0.9.sp,
                            child: CupertinoSwitch(
                              activeColor: Color(0xff3366FF),
                              thumbColor: Color(0xffD6E4FF),
                              value: _switchValue6,
                              onChanged: (bool value) {
                                setState(() {
                                  _switchValue6 = value;
                                });
                              },
                            ),
                          ),
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
                          Transform.scale(
                            scaleX: 1.0.sp,
                            scaleY: 0.9.sp,
                            child: CupertinoSwitch(
                              activeColor: Color(0xff3366FF),
                              thumbColor: Color(0xffD6E4FF),
                              value: _switchValue7,
                              onChanged: (bool value) {
                                setState(() {
                                  _switchValue7 = value;
                                });
                              },
                            ),
                          ),
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
