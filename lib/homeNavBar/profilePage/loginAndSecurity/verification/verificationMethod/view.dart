import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/homeNavBar/profilePage/loginAndSecurity/verification/verificationCode/view.dart';

import '../../../../../core/design/customizedButtom/view.dart';

class VerificationMethodView extends StatefulWidget {
  const VerificationMethodView({Key? key}) : super(key: key);

  @override
  State<VerificationMethodView> createState() => _VerificationMethodViewState();
}

class _VerificationMethodViewState extends State<VerificationMethodView> {
  bool _switchValue = false;

  List<String> dropdownItems = [
    'Telephone number (SMS)',
    'Via Email (Mail)',
    'Via Phone (Call)'
  ];
  String? selectedDropdownItem;


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
                    height: 60.h,
                    width: 330.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12),
                          child: DropdownButtonFormField<String>(
                            icon: SvgPicture.asset(
                                "assets/icons/arrow-down.svg",
                                fit: BoxFit.scaleDown,
                                color: Colors.black),
                            value: selectedDropdownItem,
                            items:
                            dropdownItems.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15),
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                        color: Color(0xff1F2937),
                                        fontSize: 16,
                                        fontWeight:
                                        FontWeight.w500),
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedDropdownItem = newValue!;
                              });
                            },
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffD1D5DB), width: 2.w),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: Color(0xffD1D5DB)),
                        ),
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
                  CustomizeButton(
                    text: "Next",
                    color: Color(0xff3366FF),
                    color1: Color(0xffFFFFFF),
                    size: 16,
                    OnClick: () {
                      navigateTo(context, VerificationCodeView());
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
