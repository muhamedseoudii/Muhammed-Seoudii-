import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/createAccount/selectCountry/view.dart';

import '../../core/design/customizedButtom/view.dart';



class SelectWorkView extends StatefulWidget {
  const SelectWorkView({Key? key}) : super(key: key);

  @override
  State<SelectWorkView> createState() => _SelectWorkViewState();
}

class _SelectWorkViewState extends State<SelectWorkView> {

  bool isSelected = true;
  bool isSelected1 = true;
  bool isSelected2 = true;
  bool isSelected3 = true;
  bool isSelected4 = true;
  bool isSelected5 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.h),
                Text(
                  "What type of work are you\ninterested in?",
                  style: TextStyle(
                    color: Color(0xff111827),
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Tell us what you’re interested in so we can\ncustomise the app for your needs.",
                  style: TextStyle(
                    color: Color(0xff6B7280),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 36.h),
                Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            isSelected = !isSelected;
                            setState(() {});
                          },
                          child: Container(
                            height: 150,
                            width: 172,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: isSelected
                                    ? Color(0xffFAFAFA)
                                    : Color(0xffD6E4FF),
                                border: Border.all(
                                    color: isSelected
                                        ? Color(0xffD1D5DB)
                                        : Color(0xff3366FF))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20,left: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: isSelected
                                        ? Color(0xffFAFAFA)
                                        : Color(0xffFFFFFF),

                                    radius: 30,
                                    child: SvgPicture.asset(
                                      "assets/icons/ui_ux_designer.svg",
                                      fit: BoxFit.scaleDown,
                                      color: isSelected
                                          ? Color(0xff111827)
                                          : Color(0xff3366FF),
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    "UI/UX Designer",
                                    style: TextStyle(
                                      color: Color(0xff111827),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            isSelected1 = !isSelected1;
                            setState(() {});
                          },
                          child: Container(
                            height: 150,
                            width: 172,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: isSelected1
                                    ? Color(0xffFAFAFA)
                                    : Color(0xffD6E4FF),
                                border: Border.all(
                                    color: isSelected1
                                        ? Color(0xffD1D5DB)
                                        : Color(0xff3366FF))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20,left: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: isSelected1
                                        ? Color(0xffFAFAFA)
                                        : Color(0xffFFFFFF),
                                    radius: 30,
                                    child: SvgPicture.asset(
                                      "assets/icons/ilustrator_designer.svg",
                                      fit: BoxFit.scaleDown,
                                      color: isSelected1
                                          ? Color(0xff111827)
                                          : Color(0xff3366FF),
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    "Ilustrator Designer",
                                    style: TextStyle(
                                      color: Color(0xff111827),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            isSelected2 = !isSelected2;
                            setState(() {});
                          },
                          child: Container(
                            height: 150,
                            width: 172,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: isSelected2
                                    ? Color(0xffFAFAFA)
                                    : Color(0xffD6E4FF),
                                border: Border.all(
                                    color: isSelected2
                                        ? Color(0xffD1D5DB)
                                        : Color(0xff3366FF))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20,left: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: isSelected2
                                        ? Color(0xffFAFAFA)
                                        : Color(0xffFFFFFF),

                                    radius: 30,
                                    child: SvgPicture.asset(
                                      "assets/icons/developer.svg",
                                      fit: BoxFit.scaleDown,
                                      color: isSelected2
                                          ? Color(0xff111827)
                                          : Color(0xff3366FF),
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    "Developer",
                                    style: TextStyle(
                                      color: Color(0xff111827),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            isSelected3 = !isSelected3;
                            setState(() {});
                          },
                          child: Container(
                            height: 150,
                            width: 172,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: isSelected3
                                    ? Color(0xffFAFAFA)
                                    : Color(0xffD6E4FF),
                                border: Border.all(
                                    color: isSelected3
                                        ? Color(0xffD1D5DB)
                                        : Color(0xff3366FF))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20,left: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: isSelected3
                                        ? Color(0xffFAFAFA)
                                        : Color(0xffFFFFFF),
                                    radius: 30,
                                    child: SvgPicture.asset(
                                      "assets/icons/management.svg",
                                      fit: BoxFit.scaleDown,
                                      color: isSelected3
                                          ? Color(0xff111827)
                                          : Color(0xff3366FF),
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    "Management",
                                    style: TextStyle(
                                      color: Color(0xff111827),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            isSelected4 = !isSelected4;
                            setState(() {});
                          },
                          child: Container(
                            height: 150,
                            width: 172,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: isSelected4
                                    ? Color(0xffFAFAFA)
                                    : Color(0xffD6E4FF),
                                border: Border.all(
                                    color: isSelected4
                                        ? Color(0xffD1D5DB)
                                        : Color(0xff3366FF))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20,left: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: isSelected4
                                        ? Color(0xffFAFAFA)
                                        : Color(0xffFFFFFF),

                                    radius: 30,
                                    child: SvgPicture.asset(
                                      "assets/icons/information_technology.svg",
                                      fit: BoxFit.scaleDown,
                                      color: isSelected4
                                          ? Color(0xff111827)
                                          : Color(0xff3366FF),
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(textAlign: TextAlign.start,
                                    "Information\nTechnology",
                                    style: TextStyle(
                                      color: Color(0xff111827),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            isSelected5 = !isSelected5;
                            setState(() {});
                          },
                          child: Container(
                            height: 150,
                            width: 172,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: isSelected5
                                    ? Color(0xffFAFAFA)
                                    : Color(0xffD6E4FF),
                                border: Border.all(
                                    color: isSelected5
                                        ? Color(0xffD1D5DB)
                                        : Color(0xff3366FF))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20,left: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: isSelected5
                                        ? Color(0xffFAFAFA)
                                        : Color(0xffFFFFFF),
                                    radius: 30,
                                    child: SvgPicture.asset(
                                      "assets/icons/Research_and_analytics.svg",
                                      fit: BoxFit.scaleDown,
                                      color: isSelected5
                                          ? Color(0xff111827)
                                          : Color(0xff3366FF),
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    "Research and\nAnalytics",
                                    style: TextStyle(
                                      color: Color(0xff111827),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 66.h),
                    CustomizeButton(
                      text: "Next",
                      color: Color(0xff3366FF),
                      color1: Color(0xffFFFFFF),
                      size: 16,
                      OnClick: () {
                        navigateTo(context, SelectCountryView());
                      },
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
