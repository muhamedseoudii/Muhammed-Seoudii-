import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/design/customizedButtom/view.dart';

class DiscordJobView extends StatefulWidget {
  const DiscordJobView({Key? key}) : super(key: key);

  @override
  State<DiscordJobView> createState() => _DiscordJobViewState();
}

class _DiscordJobViewState extends State<DiscordJobView> {

  bool isSelected = false;
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;

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
                    SizedBox(width: 75.w),
                    Text(
                      textAlign: TextAlign.center,
                      "Applied Job",
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
              Center(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/discord.svg",
                      width: 48.w,
                      height: 48.h,
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      textAlign: TextAlign.center,
                      "UI/UX Designer",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      textAlign: TextAlign.center,
                      "Discord • Jakarta, Indonesia",
                      style: TextStyle(
                        color: Color(0xff374151),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 45,right: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/right-circle.svg",fit: BoxFit.scaleDown,),
                              SizedBox(height: 8.w),
                              Text(
                                textAlign: TextAlign.center,
                                "Biodata",
                                style: TextStyle(
                                  color: Color(0xff3366FF),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  wordSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset("assets/icons/Line.svg",fit: BoxFit.scaleDown,),
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/circle2.svg",fit: BoxFit.scaleDown,),
                              SizedBox(height: 8.w),
                              Text(
                                textAlign: TextAlign.center,
                                "Type of work",
                                style: TextStyle(
                                  color: Color(0xff3366FF),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  wordSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset("assets/icons/Line1.svg",fit: BoxFit.scaleDown,),
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/circle1.svg",fit: BoxFit.scaleDown,),
                              SizedBox(height: 8.w),
                              Text(
                                textAlign: TextAlign.center,
                                "Upload portfolio",
                                style: TextStyle(
                                  color: Color(0xff111827),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  wordSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              Padding(
                padding: EdgeInsets.only(left: 24.sp, right: 24.sp,bottom: 24.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Type of work",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "Fill in your bio data correctly",
                      style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Container(
                      width: 327.w,
                      height: 85.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isSelected
                              ? Color(0xffD6E4FF)
                              : Color(0xffFAFAFA),
                          border: Border.all(color: isSelected
                              ? Color(0xff3366FF)
                              : Color(0xffD1D5DB), width: 1)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Senior UX Designer",
                                  style: TextStyle(
                                    color: Color(0xff111827),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  "CV.pdf • Portfolio.pdf",
                                  style: TextStyle(
                                    color: Color(0xff6B7280),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 130.w),
                          IconButton(onPressed: () {
                            isSelected = !isSelected;
                            setState(() {});
                          },
                            icon: isSelected ? SvgPicture.asset(
                                "assets/icons/radioOn.svg", fit: BoxFit
                                .scaleDown):SvgPicture.asset(
                                "assets/icons/radioOff.svg", fit: BoxFit
                                .scaleDown),),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Container(
                      width: 327.w,
                      height: 85.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isSelected1
                              ? Color(0xffD6E4FF)
                              : Color(0xffFAFAFA),
                          border: Border.all(color: isSelected1
                              ? Color(0xff3366FF)
                              : Color(0xffD1D5DB), width: 1)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Senior UI Designer",
                                  style: TextStyle(
                                    color: Color(0xff111827),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  "CV.pdf • Portfolio.pdf",
                                  style: TextStyle(
                                    color: Color(0xff6B7280),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 135.w),
                          IconButton(onPressed: () {
                            isSelected1 = !isSelected1;
                            setState(() {});
                          },
                            icon: isSelected1 ? SvgPicture.asset(
                                "assets/icons/radioOn.svg", fit: BoxFit
                                .scaleDown):SvgPicture.asset(
                                "assets/icons/radioOff.svg", fit: BoxFit
                                .scaleDown),),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Container(
                      width: 327.w,
                      height: 85.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isSelected2
                              ? Color(0xffD6E4FF)
                              : Color(0xffFAFAFA),
                          border: Border.all(color: isSelected2
                              ? Color(0xff3366FF)
                              : Color(0xffD1D5DB), width: 1)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Graphic Designer",
                                  style: TextStyle(
                                    color: Color(0xff111827),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  "CV.pdf • Portfolio.pdf",
                                  style: TextStyle(
                                    color: Color(0xff6B7280),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 135.w),
                          IconButton(onPressed: () {
                            isSelected2 = !isSelected2;
                            setState(() {});
                          },
                            icon: isSelected2 ? SvgPicture.asset(
                                "assets/icons/radioOn.svg", fit: BoxFit
                                .scaleDown):SvgPicture.asset(
                                "assets/icons/radioOff.svg", fit: BoxFit
                                .scaleDown),),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Container(
                      width: 327.w,
                      height: 85.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isSelected3
                              ? Color(0xffD6E4FF)
                              : Color(0xffFAFAFA),
                          border: Border.all(color: isSelected3
                              ? Color(0xff3366FF)
                              : Color(0xffD1D5DB), width: 1)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Front-End Developer",
                                  style: TextStyle(
                                    color: Color(0xff111827),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  "CV.pdf • Portfolio.pdf",
                                  style: TextStyle(
                                    color: Color(0xff6B7280),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 120.w),
                          IconButton(onPressed: () {
                            isSelected3 = !isSelected3;
                            setState(() {});
                          },
                            icon: isSelected3 ? SvgPicture.asset(
                                "assets/icons/radioOn.svg", fit: BoxFit
                                .scaleDown):SvgPicture.asset(
                                "assets/icons/radioOff.svg", fit: BoxFit
                                .scaleDown),),
                        ],
                      ),
                    ),
                    SizedBox(height: 55.h),
                    CustomizeButton(
                      text: "Next",
                      color: Color(0xff3366FF),
                      color1: Color(0xffFFFFFF),
                      size: 16,
                      OnClick: () {

                      },
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
