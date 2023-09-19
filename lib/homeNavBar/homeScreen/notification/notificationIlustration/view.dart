import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';



class NotificationIlustrationView extends StatelessWidget {
  const NotificationIlustrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24,top: 24),
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
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 110.h),
                  Image.asset(
                    "assets/images/NotificationIlustration.png",
                    fit: BoxFit.scaleDown,
                    height: 173.h,
                    width: 142.w,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    textAlign: TextAlign.center,
                    "No new notifications yet",
                    style: TextStyle(
                      color: Color(0xff111827),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      wordSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    textAlign: TextAlign.center,
                    "You will receive a notification if there is\nsomething on your account",
                    style: TextStyle(
                      color: Color(0xff6B7280),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      wordSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
