import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TermsAndConditionsView extends StatelessWidget {
  const TermsAndConditionsView({Key? key}) : super(key: key);

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
                    SizedBox(width: 60.w),
                    Text(
                      textAlign: TextAlign.center,
                      "Terms & Conditions",
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
              Padding(
                padding: EdgeInsets.only(left: 24.sp, right: 24.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem ipsum dolor",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      textAlign: TextAlign.left,
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nNam vel augue sit amet est molestie viverra. Nunc quis\nbibendum orci. Donec feugiat massa mi, at hendrerit\nmauris rutrum at. Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Nam vel augue sit amet est\nmolestie viverra. Nunc quis bibendum orci. Donec\nfeugiat massa mi, at hendrerit mauris rutrum at. Lorem\nipsum dolor sit amet, consectetur adipiscing elit. Nam\nvel augue sit amet est molestie viverra. Nunc quis\nbibendum orci. Donec feugiat massa mi, at hendrerit\nmauris rutrum at. ",
                      style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 17.h),
                    Text(
                      "Lorem ipsum dolor",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      textAlign: TextAlign.left,
                      "Nunc quis bibendum orci. Donec feugiat massa mi, at\nhendrerit mauris rutrum at. Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.  ",
                      style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Container(
                      height: 145.h,
                      width: 327.w,
                      color: Color(0xffF4F4F5),
                      child: Padding(
                        padding:  EdgeInsets.only(left: 14.sp,top: 12.sp,bottom: 12.sp,right: 14.sp),
                        child: Text(
                          textAlign: TextAlign.left,
                          "Nunc quis bibendum orci. Donec feugiat massa\nmi, at hendrerit mauris rutrum at. Lorem ipsum\ndolor sit amet, consectetur adipiscing elit. Nam vel\naugue sit amet est molestie viverra. Nunc quis\nbibendum orci. Donec feugiat massa mi, at\nhendrerit mauris rutrum at. ",
                          style: TextStyle(
                            color: Color(0xff6B7280),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            wordSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      textAlign: TextAlign.left,
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ",
                      style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
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
