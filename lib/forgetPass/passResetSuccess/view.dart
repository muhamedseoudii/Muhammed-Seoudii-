import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/customizedButtom/view.dart';
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
          CustomizeButton(
            text: "Open email app",
            color: Color(0xff3366FF),
            color1: Color(0xffFFFFFF),
            size: 16,
            OnClick: () {
              navigateTo(context, PasswordScreen(),keepHistory: false);
            },
          ),

        ],
      ),

    );
  }
}
