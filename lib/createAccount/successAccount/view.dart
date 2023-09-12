import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/createAccount/selectCountry/view.dart';
import 'package:jobsque/homeNavBar/view.dart';

import '../../core/logic/helper_methods.dart';

class SuccessAccountView extends StatefulWidget {
  const SuccessAccountView({Key? key}) : super(key: key);

  @override
  State<SuccessAccountView> createState() => _SuccessAccountViewState();
}

class _SuccessAccountViewState extends State<SuccessAccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: IconButton(
                  onPressed: () {
                    navigateTo(context, SelectCountryView());
                  },
                  icon: SvgPicture.asset(
                    "assets/icons/arrow-left.svg",
                    fit: BoxFit.scaleDown,
                  )),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 110.h),
                  Image.asset(
                    "assets/images/SuccessAccountIlustration.png",
                    fit: BoxFit.scaleDown,
                    height: 173.h,
                    width: 142.w,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Your account has been set up!",
                    style: TextStyle(
                      color: Color(0xff111827),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    textAlign: TextAlign.center,
                    "We have customized feeds according to your\npreferences",
                    style: TextStyle(
                      color: Color(0xff6B7280),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 285.h),
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
                    navigateTo(context, MyHomePage(title: "home"),keepHistory: false);
                  },
                  child: Text(
                    "Get Started",
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
      ),
    );
  }
}