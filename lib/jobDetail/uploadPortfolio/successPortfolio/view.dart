import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/homeNavBar/view.dart';

import '../../../core/design/customizedButtom/view.dart';
import '../../../core/logic/helper_methods.dart';


class SuccessPortfolioView extends StatefulWidget {
  const SuccessPortfolioView({Key? key}) : super(key: key);

  @override
  State<SuccessPortfolioView> createState() => _SuccessPortfolioViewState();
}

class _SuccessPortfolioViewState extends State<SuccessPortfolioView> {
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
                  SizedBox(width: 80.w),
                  Text(
                    textAlign: TextAlign.center,
                    "Apply Job",
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
                    "assets/images/DataSuccession.png",
                    fit: BoxFit.scaleDown,
                    height: 173.h,
                    width: 142.w,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    textAlign: TextAlign.center,
                    "Your data has been\nsuccessfully sent",
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
                    "You will get a message from our team, about\nthe announcement of employee acceptance",
                    style: TextStyle(
                      color: Color(0xff6B7280),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      wordSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 250.h),
                ],
              ),
            ),
            CustomizeButton(
              text: "Back to home",
              color: Color(0xff3366FF),
              color1: Color(0xffFFFFFF),
              size: 16,
              OnClick: () {
                navigateTo(context, MyHomePage(title: "home"),keepHistory: false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
