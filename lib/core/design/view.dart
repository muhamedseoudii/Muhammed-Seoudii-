import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PeopleModel {
  late String userImage, userName, job, work, years;

  PeopleModel(
      {required this.userImage,
        required this.userName,
        required this.job,
        required this.work,
        required this.years});
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