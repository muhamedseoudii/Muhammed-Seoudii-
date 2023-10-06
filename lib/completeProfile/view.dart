import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/completeProfile/education/view.dart';
import 'package:jobsque/completeProfile/experience/view.dart';
import 'package:jobsque/completeProfile/personalDetails/view.dart';
import 'package:jobsque/completeProfile/portfolio/view.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../core/design/view.dart';
import '../core/logic/helper_methods.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({Key? key}) : super(key: key);

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
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
                      SizedBox(width: 55.w),
                      Text(
                        textAlign: TextAlign.center,
                        "Complete Profile",
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
                SizedBox(height: 33.h),
                Center(
                  child: CircularPercentIndicator(
                    radius: 50.0,
                    lineWidth: 7.0,
                    percent: 0.5,
                    center: new Text(
                      "50%",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24.sp,
                        color: Color(0xff3366FF),
                      ),
                    ),
                    progressColor: Color(0xff3366FF),
                  ),
                ),
                SizedBox(height: 20.h),
                Column(
                  children: [
                    Center(
                      child: Text(
                        "2/4 Completed",
                        style: TextStyle(
                          color: Color(0xff3366FF),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Center(
                      child: Text(
                        "Complete your profile before applying for a job",
                        style: TextStyle(
                          color: Color(0xff6B7280),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 1,
                        ),
                      ),
                    ),
                    SizedBox(height: 34.h),
                    ProfileContainer(
                      icon: "assets/icons/tick-circle.svg",
                      title: "Personal Details",
                      desc: "Full name, email, phone number, and your\naddress",
                      icon1: "assets/icons/arrow-right1.svg",
                      backcolor: Color(0xffE0EBFF),
                      bordercolor: Color(0xff84A9FF),
                      size: 30,
                      OnClick: (){
                         navigateTo(context, PersonalDetailsView());
                      },
                    ),
                    SizedBox(height: 20.h),
                    ProfileContainer(
                      icon: "assets/icons/tick-circle.svg",
                      title: "Education",
                      desc: "Enter your educational history to be\nconsidered by the recruiter",
                      icon1: "assets/icons/arrow-right1.svg",
                      backcolor: Color(0xffE0EBFF),
                      bordercolor: Color(0xff84A9FF),
                      size: 61,
                      OnClick: (){
                        navigateTo(context, EducationView());
                      },
                    ),
                    SizedBox(height: 20.h),
                    ProfileContainer(
                      icon: "assets/icons/untick-circle.svg",
                      title: "Experience",
                      desc: "Enter your work experience to be\nconsidered by the recruiter",
                      icon1: "assets/icons/arrow-right1.svg",
                      backcolor: Color(0xffFFFFFF),
                      bordercolor: Color(0xffD1D5DB),
                      size: 74,
                      OnClick: (){
                        navigateTo(context, ExperienceView());
                      },
                    ),
                    SizedBox(height: 20.h),
                    ProfileContainer(
                      icon: "assets/icons/untick-circle.svg",
                      title: "Portfolio",
                      desc: "Create your portfolio. Applying for various\ntypes of jobs is easier.",
                      icon1: "assets/icons/arrow-right1.svg",
                      backcolor: Color(0xffFFFFFF),
                      bordercolor: Color(0xffD1D5DB),
                      size: 32,
                      OnClick: (){
                        navigateTo(context, PortfolioView());
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
