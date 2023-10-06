  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/createAccount/successAccount/view.dart';

import '../../core/design/customizedButtom/view.dart';

class SelectCountryView extends StatefulWidget {
  const SelectCountryView({Key? key}) : super(key: key);

  @override
  State<SelectCountryView> createState() => _SelectCountryViewState();
}

class _SelectCountryViewState extends State<SelectCountryView> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  bool isSelected = false;
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;
  bool isSelected6 = false;
  bool isSelected7 = false;
  bool isSelected8 = false;
  bool isSelected9 = false;
  bool isSelected10 = false;
  bool isSelected11 = false;
  bool isSelected12 = false;

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
                  "Where are you prefefred\nLocation?",
                  style: TextStyle(
                    color: Color(0xff111827),
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Let us know, where is the work location you\nwant at this time, so we can adjust it.",
                  style: TextStyle(
                    color: Color(0xff6B7280),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 32.h),
                Container(
                  alignment: Alignment.center,
                  height: 46.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: Color(0xffF4F4F5),
                  ),
                  child: Column(
                    children: [
                      TabBar(
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          color: Color(0xff091A7A),
                        ),
                        labelColor: Color(0xffFFFFFF),
                        unselectedLabelColor: Color(0xff6B7280),
                        controller: tabController,
                        tabs: [
                          Tab(text: 'Work From Office'),
                          Tab(text: 'Remote Work'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Text(
                  "Select the country you want for your job",
                  style: TextStyle(
                    color: Color(0xff737379),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        isSelected = !isSelected;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 162,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: isSelected
                                ? Color(0xffD6E4FF)
                                : Color(0xffFAFAFA),
                            border: Border.all(
                                color: isSelected
                                    ? Color(0xff3366FF)
                                    : Color(0xffD1D5DB))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/usa.png",
                                fit: BoxFit.scaleDown,
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                "United States",
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
                    SizedBox(width: 12.w),
                    GestureDetector(
                      onTap: () {
                        isSelected1 = !isSelected1;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: isSelected1
                                ? Color(0xffD6E4FF)
                                : Color(0xffFAFAFA),
                            border: Border.all(
                                color: isSelected1
                                    ? Color(0xff3366FF)
                                    : Color(0xffD1D5DB))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/malaysia.png",
                                fit: BoxFit.scaleDown,
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                "Malaysia",
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
                SizedBox(height: 16.h),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        isSelected2 = !isSelected2;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: isSelected2
                                ? Color(0xffD6E4FF)
                                : Color(0xffFAFAFA),
                            border: Border.all(
                                color: isSelected2
                                    ? Color(0xff3366FF)
                                    : Color(0xffD1D5DB))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/singapore.png",
                                fit: BoxFit.scaleDown,
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                "Singapore",
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
                    SizedBox(width: 12.w),
                    GestureDetector(
                      onTap: () {
                        isSelected3 = !isSelected3;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: isSelected3
                                ? Color(0xffD6E4FF)
                                : Color(0xffFAFAFA),
                            border: Border.all(
                                color: isSelected3
                                    ? Color(0xff3366FF)
                                    : Color(0xffD1D5DB))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/Indonesia.png",
                                fit: BoxFit.scaleDown,
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                "Indonesia",
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
                SizedBox(height: 16.h),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        isSelected4 = !isSelected4;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: isSelected4
                                ? Color(0xffD6E4FF)
                                : Color(0xffFAFAFA),
                            border: Border.all(
                                color: isSelected4
                                    ? Color(0xff3366FF)
                                    : Color(0xffD1D5DB))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/Phillipines.png",
                                fit: BoxFit.scaleDown,
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                "Philiphines",
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
                    SizedBox(width: 12.w),
                    GestureDetector(
                      onTap: () {
                        isSelected5 = !isSelected5;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: isSelected5
                                ? Color(0xffD6E4FF)
                                : Color(0xffFAFAFA),
                            border: Border.all(
                                color: isSelected5
                                    ? Color(0xff3366FF)
                                    : Color(0xffD1D5DB))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/poland.png",
                                fit: BoxFit.scaleDown,
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                "Polandia",
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
                SizedBox(height: 16.h),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        isSelected6 = !isSelected6;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 95,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: isSelected6
                                ? Color(0xffD6E4FF)
                                : Color(0xffFAFAFA),
                            border: Border.all(
                                color: isSelected6
                                    ? Color(0xff3366FF)
                                    : Color(0xffD1D5DB))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/india.png",
                                fit: BoxFit.scaleDown,
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                "India",
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
                    SizedBox(width: 12.w),
                    GestureDetector(
                      onTap: () {
                        isSelected7 = !isSelected7;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: isSelected7
                                ? Color(0xffD6E4FF)
                                : Color(0xffFAFAFA),
                            border: Border.all(
                                color: isSelected7
                                    ? Color(0xff3366FF)
                                    : Color(0xffD1D5DB))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/vietnam.png",
                                fit: BoxFit.scaleDown,
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                "Vietnam",
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
                    SizedBox(width: 12.w),
                    GestureDetector(
                      onTap: () {
                        isSelected8 = !isSelected8;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 105,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: isSelected8
                                ? Color(0xffD6E4FF)
                                : Color(0xffFAFAFA),
                            border: Border.all(
                                color: isSelected8
                                    ? Color(0xff3366FF)
                                    : Color(0xffD1D5DB))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/china.png",
                                fit: BoxFit.scaleDown,
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                "China",
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
                SizedBox(height: 16.h),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        isSelected9 = !isSelected9;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: isSelected9
                                ? Color(0xffD6E4FF)
                                : Color(0xffFAFAFA),
                            border: Border.all(
                                color: isSelected9
                                    ? Color(0xff3366FF)
                                    : Color(0xffD1D5DB))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/canada.png",
                                fit: BoxFit.scaleDown,
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                "Canada",
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
                    SizedBox(width: 12.w),
                    GestureDetector(
                      onTap: () {
                        isSelected10 = !isSelected10;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: isSelected10
                                ? Color(0xffD6E4FF)
                                : Color(0xffFAFAFA),
                            border: Border.all(
                                color: isSelected10
                                    ? Color(0xff3366FF)
                                    : Color(0xffD1D5DB))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/saudiArabia.png",
                                fit: BoxFit.scaleDown,
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                "Saudi Arabia",
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
                SizedBox(height: 16.h),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        isSelected11 = !isSelected11;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: isSelected11
                                ? Color(0xffD6E4FF)
                                : Color(0xffFAFAFA),
                            border: Border.all(
                                color: isSelected11
                                    ? Color(0xff3366FF)
                                    : Color(0xffD1D5DB))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/argentina.png",
                                fit: BoxFit.scaleDown,
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                "Argentina",
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
                    SizedBox(width: 12.w),
                    GestureDetector(
                      onTap: () {
                        isSelected12 = !isSelected12;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 105,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: isSelected12
                                ? Color(0xffD6E4FF)
                                : Color(0xffFAFAFA),
                            border: Border.all(
                                color: isSelected12
                                    ? Color(0xff3366FF)
                                    : Color(0xffD1D5DB))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/brazil.png",
                                fit: BoxFit.scaleDown,
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                "Brazil",
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
                SizedBox(height: 69.h),
                CustomizeButton(
                  text: "Next",
                  color: Color(0xff3366FF),
                  color1: Color(0xffFFFFFF),
                  size: 16,
                  OnClick: () {
                    navigateTo(context, SuccessAccountView());
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
