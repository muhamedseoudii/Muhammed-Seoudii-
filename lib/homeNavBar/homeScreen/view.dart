import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/homeNavBar/homeScreen/searchScreen/view.dart';
import 'package:jobsque/jobDetail/view.dart';

import '../../core/design/view.dart';
import 'notification/view.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  final List recentJobs = [
    ["Senior UI Designer", "Twitter • Jakarta, Indonesia ", "twitter"],
    ["Senior UX Designer", "Discord • Jakarta, Indonesia ", "discord"],
    ["Junior UI Designer", "Invision • Jakarta, Indonesia ", "invision"]
  ];
  int onTapping = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 250.w,
                      color: Color(0xffFFFFFF),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.h),
                          Text(
                            "Hi, Rafif Dian👋",
                            style: TextStyle(
                              color: Color(0xff111827),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Create a better future for yourself here",
                            style: TextStyle(
                              color: Color(0xff6B7280),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25.w),
                    Container(
                      width: 48.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffFFFFFF),
                          border: Border.all(color: Color(0xffD1D5DB))),
                      child: IconButton(
                        onPressed: () {
                          navigateTo(context, NotificationView());
                        },
                        icon: Icon(CupertinoIcons.bell),
                        color: Color(0xff111827),
                        iconSize: 25,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 350.w,
                  height: 55.h,
                  child: TextFormField(
                    onTap: () {
                      navigateTo(context, SearchScreenView());
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Search....",
                      labelStyle: TextStyle(
                          color: Color(0xff9CA3AF),
                          wordSpacing: 0.5,
                          fontSize: 14),
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      prefixIcon: SvgPicture.asset("assets/icons/search.svg",
                          fit: BoxFit.scaleDown),
                      hintText: "Type something...",
                      hintStyle:
                          TextStyle(color: Color(0xff9CA3AF), fontSize: 14),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.r),
                        borderSide:
                            BorderSide(color: Color(0xffD1D5DB), width: 3),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.r),
                        borderSide: BorderSide(color: Color(0xffFF472B)),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.r),
                        borderSide:
                            BorderSide(color: Color(0xffFF472B), width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.r),
                        borderSide: BorderSide(color: Color(0xffD1D5DB)),
                        gapPadding: 5,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: 327.w,
                  height: 95.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffD6E4FF)),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/twitter.svg",
                          fit: BoxFit.scaleDown,
                        ),
                        SizedBox(width: 12.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Twitter",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff222741),
                                  wordSpacing: 1),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "Waiting to be selected by the\ntwitter team",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff374151),
                                  wordSpacing: 1),
                            ),
                          ],
                        ),
                        SizedBox(width: 20.w),
                        Container(
                          width: 80.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              color: Color(0xffADC8FF)),
                          child: Center(child:  Text(
                            "Submited",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1939B7),
                                wordSpacing: 1),
                          ),),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Suggested Job",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff111827),
                          wordSpacing: 1),
                    ),
                    TextButton(
                      onPressed: () {
                        // navigateTo(context, ExploreRestView());
                      },
                      child: Text(
                        "View More",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3366FF),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 210.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            width: 320,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Color(0xff091A7A)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, top: 20, right: 14, bottom: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/Zoom.svg",
                                        fit: BoxFit.scaleDown,
                                      ),
                                      SizedBox(width: 20.w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Product Designer",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffFFFFFF),
                                                wordSpacing: 1),
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            "Zoom • United States",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff9CA3AF),
                                                wordSpacing: 1),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 30.w),
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                          "assets/icons/savewhite.svg",
                                          fit: BoxFit.scaleDown,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 82.w,
                                        height: 35.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100.r),
                                            color: Color(0xffFFFFFF)
                                                .withOpacity(0.14)),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Fulltime",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xffFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 82.w,
                                        height: 35.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100.r),
                                            color: Color(0xffFFFFFF)
                                                .withOpacity(0.14)),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Remote",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xffFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 82.w,
                                        height: 35.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100.r),
                                            color: Color(0xffFFFFFF)
                                                .withOpacity(0.14)),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Design",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xffFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30.h),
                                  Row(
                                    children: [
                                      Text(
                                        "\$12K-15K",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                      Text(
                                        textAlign: TextAlign.end,
                                        "/Month",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color(0xffFFFFFF).withOpacity(.5),
                                        ),
                                      ),
                                      SizedBox(width: 52.w),
                                      Container(
                                        width: 100.w,
                                        height: 38.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1000.r),
                                            color: Color(0xff3366FF)),
                                        child: TextButton(
                                          onPressed: () {
                                            navigateTo(
                                                context, JobDetailView());
                                          },
                                          child: Text(
                                            "Apply now",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xffFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 16.w),
                      itemCount: 2),
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Job",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff111827),
                          wordSpacing: 1),
                    ),
                    TextButton(
                      onPressed: () {
                        // navigateTo(context, ExploreRestView());
                      },
                      child: Text(
                        "View More",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3366FF),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 280.h,
                  child: GestureDetector(
                    onTap: () {
                      navigateTo(context, JobDetailView());
                    },
                    child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return RecentJob(
                            title: recentJobs[index][0],
                            desc: recentJobs[index][1],
                            iconn: recentJobs[index][2],
                            isSelected: onTapping == 0,
                            onTap: () {
                              onTapping = 1;
                              setState(() {});
                            },
                          );
                        },
                        separatorBuilder: (context, index) =>
                            Divider(thickness: 2, color: Color(0xffE5E7EB)),
                        itemCount: recentJobs.length),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
