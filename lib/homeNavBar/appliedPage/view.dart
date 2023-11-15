import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/homeNavBar/appliedPage/discordJob/view.dart';
import 'package:jobsque/homeNavBar/appliedPage/invisionJob/view.dart';
import 'package:jobsque/homeNavBar/appliedPage/spectrumJob/view.dart';

class AppliedPageView extends StatefulWidget {
  const AppliedPageView({Key? key}) : super(key: key);

  @override
  State<AppliedPageView> createState() => _AppliedPageViewState();
}

class _AppliedPageViewState extends State<AppliedPageView>
    with TickerProviderStateMixin {
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
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 23.sp, right: 22.sp),
                    child: Container(
                      alignment: Alignment.center,
                      height: 46.h,
                      width: 330.w,
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
                              Tab(text: 'Active'),
                              Tab(text: 'Rejected'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  SizedBox(
                    height: 550.h,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 36.h,
                                width: MediaQuery.of(context).size.width,
                                color: Color(0xffE5E7EB),
                                child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 24.w),
                                      Text(
                                        '3 Jobs',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff6B7280),
                                          fontWeight: FontWeight.w500,
                                          wordSpacing: 1,
                                        ),
                                      ),
                                      SizedBox(height: 24.h),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 24.h),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 24.sp, right: 24.sp),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        navigateTo(context, SpectrumJobView());
                                      },
                                      child: Container(
                                        height: 188.h,
                                        width: 332.w,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/icons/SpectrumLogo.svg",
                                                  fit: BoxFit.cover,
                                                  width: 40.w,
                                                  height: 40.h,
                                                ),
                                                SizedBox(width: 20.w),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              Color(0xff111827),
                                                          wordSpacing: 1),
                                                    ),
                                                    SizedBox(height: 5.h),
                                                    Text(
                                                      "Spectrum • Jakarta, Indonesia ",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Color(0xff111827),
                                                          wordSpacing: 1),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 57.w),
                                                IconButton(
                                                  onPressed: () {
                                                    isSelected = !isSelected;
                                                    setState(() {});
                                                  },
                                                  icon: isSelected
                                                      ? SvgPicture.asset(
                                                          "assets/icons/save1.svg",
                                                          fit: BoxFit.scaleDown,
                                                        )
                                                      : SvgPicture.asset(
                                                          "assets/icons/save.svg",
                                                          fit: BoxFit.scaleDown,
                                                          color:
                                                              Color(0xff111827),
                                                        ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 16.h),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 26.h,
                                                  width: 70.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.r),
                                                      color: Color(0xffD6E4FF)),
                                                  child: Center(
                                                    child: Text(
                                                      "Fulltime",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff3366FF),
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        wordSpacing: 1,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 12.w),
                                                Container(
                                                  height: 26.h,
                                                  width: 70.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.r),
                                                      color: Color(0xffD6E4FF)),
                                                  child: Center(
                                                    child: Text(
                                                      "Remote",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff3366FF),
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        wordSpacing: 1,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 79.w),
                                                Text(
                                                  "Posted 2 days ago",
                                                  style: TextStyle(
                                                    color: Color(0xff374151),
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    wordSpacing: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 12.h),
                                            Container(
                                              height: 75.h,
                                              width: 330.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                  color: Color(0xffFFFFFF),
                                                  border: Border.all(
                                                      color:
                                                          Color(0xffD1D5DB))),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10.sp,
                                                    right: 10.sp,
                                                    bottom: 12.sp,
                                                    top: 12.sp),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/icons/bluecircle1.svg",
                                                          fit: BoxFit.scaleDown,
                                                        ),
                                                        SizedBox(height: 8.w),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "Biodata",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff3366FF),
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            wordSpacing: 1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SvgPicture.asset(
                                                      "assets/icons/Line.svg",
                                                      fit: BoxFit.scaleDown,
                                                    ),
                                                    Column(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/icons/circle.svg",
                                                          fit: BoxFit.scaleDown,
                                                          width: 24.w,
                                                          height: 24.h,
                                                        ),
                                                        SizedBox(height: 8.w),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "Type of work",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff111827),
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            wordSpacing: 1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SvgPicture.asset(
                                                      "assets/icons/Line1.svg",
                                                      fit: BoxFit.scaleDown,
                                                    ),
                                                    Column(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/icons/circle1.svg",
                                                          fit: BoxFit.scaleDown,
                                                          width: 24.w,
                                                          height: 24.h,
                                                        ),
                                                        SizedBox(height: 8.w),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "Upload portfolio",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff111827),
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            wordSpacing: 1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1.sp,
                                      color: Color(0xffD1D5DB),
                                    ),
                                    SizedBox(height: 16.h),
                                    GestureDetector(
                                      onTap: () {
                                        navigateTo(context, DiscordJobView());
                                      },
                                      child: Container(
                                        height: 188.h,
                                        width: 330.w,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/icons/discord.svg",
                                                  fit: BoxFit.cover,
                                                  width: 40.w,
                                                  height: 40.h,
                                                ),
                                                SizedBox(width: 20.w),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              Color(0xff111827),
                                                          wordSpacing: 1),
                                                    ),
                                                    SizedBox(height: 5.h),
                                                    Text(
                                                      "Discord • Jakarta, Indonesia",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Color(0xff111827),
                                                          wordSpacing: 1),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 73.w),
                                                IconButton(
                                                  onPressed: () {
                                                    isSelected1 = !isSelected1;
                                                    setState(() {});
                                                  },
                                                  icon: isSelected1
                                                      ? SvgPicture.asset(
                                                          "assets/icons/save1.svg",
                                                          fit: BoxFit.scaleDown,
                                                        )
                                                      : SvgPicture.asset(
                                                          "assets/icons/save.svg",
                                                          fit: BoxFit.scaleDown,
                                                          color:
                                                              Color(0xff111827),
                                                        ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 16.h),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 26.h,
                                                  width: 70.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.r),
                                                      color: Color(0xffD6E4FF)),
                                                  child: Center(
                                                    child: Text(
                                                      "Fulltime",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff3366FF),
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        wordSpacing: 1,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 12.w),
                                                Container(
                                                  height: 26.h,
                                                  width: 70.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.r),
                                                      color: Color(0xffD6E4FF)),
                                                  child: Center(
                                                    child: Text(
                                                      "Remote",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff3366FF),
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        wordSpacing: 1,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 80.w),
                                                Text(
                                                  "Posted 2 days ago",
                                                  style: TextStyle(
                                                    color: Color(0xff374151),
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    wordSpacing: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 12.h),
                                            Container(
                                              height: 75.h,
                                              width: 330.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                  color: Color(0xffFFFFFF),
                                                  border: Border.all(
                                                      color:
                                                          Color(0xffD1D5DB))),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10.sp,
                                                    right: 10.sp,
                                                    bottom: 12.sp,
                                                    top: 12.sp),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/icons/bluecircle1.svg",
                                                          fit: BoxFit.scaleDown,
                                                        ),
                                                        SizedBox(height: 8.w),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "Biodata",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff3366FF),
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            wordSpacing: 1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SvgPicture.asset(
                                                      "assets/icons/Line.svg",
                                                      fit: BoxFit.scaleDown,
                                                    ),
                                                    Column(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/icons/bluecircle2.svg",
                                                          fit: BoxFit.scaleDown,
                                                          width: 24.w,
                                                          height: 24.h,
                                                        ),
                                                        SizedBox(height: 8.w),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "Type of work",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff3366FF),
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            wordSpacing: 1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SvgPicture.asset(
                                                      "assets/icons/Line1.svg",
                                                      fit: BoxFit.scaleDown,
                                                    ),
                                                    Column(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/icons/circle1.svg",
                                                          fit: BoxFit.scaleDown,
                                                          width: 24.w,
                                                          height: 24.h,
                                                        ),
                                                        SizedBox(height: 8.w),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "Upload portfolio",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff111827),
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            wordSpacing: 1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1.sp,
                                      color: Color(0xffD1D5DB),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        navigateTo(context, InvisionJobView());
                                      },
                                      child: Container(
                                        height: 188.h,
                                        width: 330.w,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/icons/invision.svg",
                                                  fit: BoxFit.cover,
                                                  width: 40.w,
                                                  height: 40.h,
                                                ),
                                                SizedBox(width: 20.w),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              Color(0xff111827),
                                                          wordSpacing: 1),
                                                    ),
                                                    SizedBox(height: 5.h),
                                                    Text(
                                                      "Invision • Jakarta, Indonesia",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Color(0xff111827),
                                                          wordSpacing: 1),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 73.w),
                                                IconButton(
                                                  onPressed: () {
                                                    isSelected2 = !isSelected2;
                                                    setState(() {});
                                                  },
                                                  icon: isSelected2
                                                      ? SvgPicture.asset(
                                                          "assets/icons/save1.svg",
                                                          fit: BoxFit.scaleDown,
                                                        )
                                                      : SvgPicture.asset(
                                                          "assets/icons/save.svg",
                                                          fit: BoxFit.scaleDown,
                                                          color:
                                                              Color(0xff111827),
                                                        ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 16.h),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 26.h,
                                                  width: 70.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.r),
                                                      color: Color(0xffD6E4FF)),
                                                  child: Center(
                                                    child: Text(
                                                      "Fulltime",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff3366FF),
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        wordSpacing: 1,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 12.w),
                                                Container(
                                                  height: 26.h,
                                                  width: 70.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.r),
                                                      color: Color(0xffD6E4FF)),
                                                  child: Center(
                                                    child: Text(
                                                      "Remote",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff3366FF),
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        wordSpacing: 1,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 80.w),
                                                Text(
                                                  "Posted 2 days ago",
                                                  style: TextStyle(
                                                    color: Color(0xff374151),
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    wordSpacing: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 12.h),
                                            Container(
                                              height: 75.h,
                                              width: 330.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                  color: Color(0xffFFFFFF),
                                                  border: Border.all(
                                                      color:
                                                          Color(0xffD1D5DB))),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10.sp,
                                                    right: 10.sp,
                                                    bottom: 12.sp,
                                                    top: 12.sp),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/icons/bluecircle1.svg",
                                                          fit: BoxFit.scaleDown,
                                                        ),
                                                        SizedBox(height: 8.w),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "Biodata",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff3366FF),
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            wordSpacing: 1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SvgPicture.asset(
                                                      "assets/icons/Line.svg",
                                                      fit: BoxFit.scaleDown,
                                                    ),
                                                    Column(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/icons/bluecircle2.svg",
                                                          fit: BoxFit.scaleDown,
                                                          width: 24.w,
                                                          height: 24.h,
                                                        ),
                                                        SizedBox(height: 8.w),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "Type of work",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff3366FF),
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            wordSpacing: 1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SvgPicture.asset(
                                                      "assets/icons/Line.svg",
                                                      fit: BoxFit.scaleDown,
                                                    ),
                                                    Column(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/icons/bluecircle3.svg",
                                                          fit: BoxFit.scaleDown,
                                                          width: 24.w,
                                                          height: 24.h,
                                                        ),
                                                        SizedBox(height: 8.w),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "Upload portfolio",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff3366FF),
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            wordSpacing: 1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 87.h),
                            Image.asset(
                              "assets/images/RejectedIlustration.png",
                              fit: BoxFit.scaleDown,
                              width: 173.w,
                              height: 142.h,
                            ),
                            SizedBox(height: 24.h),
                            Text(
                              'No applications were rejected',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff111827),
                                wordSpacing: 1,
                              ),
                            ),
                            SizedBox(height: 24.h),
                            Text(
                              textAlign: TextAlign.center,
                              'If there is an application that is rejected by the\ncompany it will appear here',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6B7280),
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
            ],
          ),
        ),
      ),
    );
  }
}
