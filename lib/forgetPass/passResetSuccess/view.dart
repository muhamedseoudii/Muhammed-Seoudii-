import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/logic/helper_methods.dart';
import '../createPass/view.dart';

class PassResetSuccessview extends StatefulWidget {
  const PassResetSuccessview({Key? key}) : super(key: key);

  @override
  State<PassResetSuccessview> createState() => _PassResetSuccessviewState();
}

class _PassResetSuccessviewState extends State<PassResetSuccessview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 150.h),
                Image.asset(
                  "assets/images/passSuccess.png",
                  fit: BoxFit.scaleDown,
                  height: 173.h,
                  width: 142.w,
                ),
                SizedBox(height: 10.h),
                Text(
                  textAlign: TextAlign.center,
                  "Password changed\nsuccesfully!",
                  style: TextStyle(
                    color: Color(0xff111827),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  textAlign: TextAlign.center,
                  "Your password has been changed successfully,\nwe will let you know if there are more problems\nwith your account",
                  style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 266.h),

              ],
            ),
          ),
          Center(
            child: Container(
              height: 48,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xff3366FF),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  navigateTo(context, PasswordScreen(),keepHistory: false);
                },
                child: Text(
                  "Open email app",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}