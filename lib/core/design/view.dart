import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/homeNavBar/savedPaged/savedIlustration/view.dart';

import '../logic/helper_methods.dart';

class PeopleModel {
  late String userImage, userName, job, work, years;

  PeopleModel(
      {required this.userImage,
      required this.userName,
      required this.job,
      required this.work,
      required this.years});
}

class ProfileModel {
  late String userImage, userName, icon;

  ProfileModel(
      {required this.userImage,
        required this.userName,
        required this.icon,
       });
}


class MessageModel {
  late String userImage, userName, msg, time;

  MessageModel(
      {required this.userImage,
        required this.userName,
        required this.msg,
        required this.time,
      });
}

class NotificationModel {
  late String userImage, userName, message, icon, time;

  NotificationModel(
      {required this.userImage,
      required this.userName,
      required this.message,
      required this.icon,
      required this.time});
}

class RecentJob extends StatefulWidget {
  final String title, iconn, desc;

  final VoidCallback onTap;
  final bool isSelected;

  const RecentJob(
      {Key? key,
      required this.title,
      required this.iconn,
      required this.desc,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  @override
  State<RecentJob> createState() => _RecentJobState();
}

class _RecentJobState extends State<RecentJob> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 120,
      color: Color(0xffFFFFFF),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "assets/icons/${widget.iconn}.svg",
                fit: BoxFit.scaleDown,
              ),
              SizedBox(width: 20.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff111827),
                        wordSpacing: 1),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    widget.desc,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff111827),
                        wordSpacing: 1),
                  ),
                ],
              ),
              SizedBox(width: 65.w),
              IconButton(
                onPressed: widget.onTap,
                icon: SvgPicture.asset(
                  widget.isSelected
                      ? "assets/icons/saveblack.svg"
                      : "assets/icons/save1.svg",
                  fit: BoxFit.scaleDown,
                  // color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 65.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: Color(0xffD6E4FF),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Fulltime",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3366FF),
                    ),
                  ),
                ),
              ),
              Container(
                width: 65.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: Color(0xffD6E4FF),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Remote",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3366FF),
                    ),
                  ),
                ),
              ),
              Container(
                width: 65.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: Color(0xffD6E4FF),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Senior",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3366FF),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 18.w),
              Row(
                children: [
                  Text(
                    "\$12K-15K",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2E8E18),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.end,
                    "/Month",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6B7280),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SavedJop extends StatefulWidget {
  final String title, iconn, desc;

  final bool isSelected;

  const SavedJop({
    Key? key,
    required this.title,
    required this.iconn,
    required this.desc,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<SavedJop> createState() => _SavedJopState();
}

class _SavedJopState extends State<SavedJop> {
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 110,
      color: Color(0xffFFFFFF),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "assets/icons/${widget.iconn}.svg",
                fit: BoxFit.cover,
              ),
              SizedBox(width: 20.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff111827),
                        wordSpacing: 1),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    widget.desc,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff111827),
                        wordSpacing: 1),
                  ),
                ],
              ),
              SizedBox(width: 67.w),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Color(0xffFFFFFF),
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (context) => SizedBox(
                      height: 300.h,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24, top: 36, right: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 328.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.r),
                                color: Color(0xffFFFFFF),
                                border: Border.all(
                                    color: Color(0xffD1D5DB), width: 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                        "assets/icons/directbox.svg",
                                        fit: BoxFit.scaleDown),
                                    SizedBox(width: 14.w),
                                    Text(
                                      "Apply Job",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff111827),
                                          wordSpacing: 1),
                                    ),
                                    SizedBox(width: 187.w),
                                    GestureDetector(
                                      onTap: () {

                                      },
                                        child: SvgPicture.asset(
                                            "assets/icons/arrow-right.svg",
                                            fit: BoxFit.scaleDown))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Container(
                              width: 328.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.r),
                                color: Color(0xffFFFFFF),
                                border: Border.all(
                                    color: Color(0xffD1D5DB), width: 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                        "assets/icons/export.svg",
                                        fit: BoxFit.scaleDown,
                                      color: Color(0xff111827),
                                    ),

                                    SizedBox(width: 14.w),
                                    Text(
                                      "Share via...",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff111827),
                                          wordSpacing: 1),
                                    ),
                                    SizedBox(width: 180.w),
                                    GestureDetector(
                                        onTap: () {

                                        },
                                        child: SvgPicture.asset(
                                            "assets/icons/arrow-right.svg",
                                            fit: BoxFit.scaleDown))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Container(
                              width: 328.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.r),
                                color: Color(0xffFFFFFF),
                                border: Border.all(
                                    color: Color(0xffD1D5DB), width: 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/save.svg",
                                      fit: BoxFit.scaleDown,
                                      color: Color(0xff111827),
                                    ),

                                    SizedBox(width: 14.w),
                                    Text(
                                      "Cancel save",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff111827),
                                          wordSpacing: 1),
                                    ),
                                    SizedBox(width: 170.w),
                                    GestureDetector(
                                        onTap: () {
                                          navigateTo(context, SavedIlustrationView());
                                        },
                                        child: SvgPicture.asset(
                                            "assets/icons/arrow-right.svg",
                                            fit: BoxFit.scaleDown))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                icon: SvgPicture.asset(
                  "assets/icons/more.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Posted 2 days ago",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff374151),
                    wordSpacing: 1),
              ),
              SizedBox(width: 120.w),
              SvgPicture.asset(
                "assets/icons/clock.svg",
                fit: BoxFit.scaleDown,
              ),
              SizedBox(width: 6.w),
              Text(
                "Be an early applicant",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff374151),
                    wordSpacing: 1),
              ),
            ],
          )
        ],
      ),
    );
  }
}
