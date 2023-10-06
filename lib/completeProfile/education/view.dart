import 'package:date_format_field/date_format_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/design/customizedButtom/view.dart';
import '../../core/design/view.dart';

class EducationView extends StatefulWidget {
  const EducationView({Key? key}) : super(key: key);

  @override
  State<EducationView> createState() => _EducationViewState();
}

class _EducationViewState extends State<EducationView> {

    final formkey = GlobalKey<FormState>();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  DateTime? _date;

  String display() {
    if (_date == null) {
      return 'NONE';
    } else {
      return 'year:${_date!.year}\nmonth:${_date!.month}\nday:${_date!.day}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(right: 15.sp, top: 24.sp, left: 15.sp),
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
                      SizedBox(width: 85.w),
                      Text(
                        textAlign: TextAlign.center,
                        "Education",
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
                Center(
                  child: Form(
                    key: formkey,
                    child: Container(
                      width: 330.w,
                      height: 490.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Color(0xffFFFFFF),
                          border:
                              Border.all(color: Color(0xffD1D5DB), width: 1.w)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 12.sp, right: 12.sp, top: 12.sp, bottom: 14.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              "University",
                              style: TextStyle(
                                color: Color(0xff9CA3AF),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 1,
                              ),
                            ),
                            SizedBox(height: 6.h),
                            TextFieldApp(
                              sizeH: 60,
                              sizeW: 305,
                              Controller: controller1,
                            ),
                            SizedBox(height: 16.h),
                            Text(
                              textAlign: TextAlign.center,
                              "Title",
                              style: TextStyle(
                                color: Color(0xff9CA3AF),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 1,
                              ),
                            ),
                            SizedBox(height: 6.h),
                            TextFieldApp(
                              sizeH: 60,
                              sizeW: 305,
                              Controller: controller2,
                            ),
                            SizedBox(height: 16.h),
                            Text(
                              textAlign: TextAlign.center,
                              "Start Year",
                              style: TextStyle(
                                color: Color(0xff9CA3AF),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 1,
                              ),
                            ),
                            SizedBox(height: 6.h),
                            Container(
                              width: 305.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xffFFFFFF),
                                border: Border.all(
                                    color: Color(0xffD1D5DB), width: 1.w),
                              ),
                              child: DateFormatField(
                                type: DateFormatType.type4,
                                addCalendar: true,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                onComplete: (date) {
                                  setState(() {
                                    _date = date;
                                  });
                                },
                              ),
                            ),
                            SizedBox(height: 16.h),
                            Text(
                              textAlign: TextAlign.center,
                              "End Year",
                              style: TextStyle(
                                color: Color(0xff9CA3AF),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 1,
                              ),
                            ),
                            SizedBox(height: 6.h),
                            Container(
                              width: 305.w,
                              height: 55.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xffFFFFFF),
                                border: Border.all(
                                    color: Color(0xffD1D5DB), width: 1.w),
                              ),
                              child: DateFormatField(
                                type: DateFormatType.type4,
                                addCalendar: true,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                onComplete: (date) {
                                  setState(() {
                                    _date = date;
                                  });
                                },
                              ),
                            ),
                            SizedBox(height: 28.h),
                            CustomizeButton1(
                              text: "Save",
                              color: Color(0xff3366FF),
                              color1: Color(0xffFFFFFF),
                              size: 14,
                              OnClick: () {
                                if (formkey.currentState!.validate()) {
                                  // Passwords are valid and match
                                  // Perform further actions like saving the password
                                  // navigateTo(context, TypeOfWorkView());
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("You have changed your Education"),
                                      duration: Duration(seconds: 5), ),
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                ProfileContainer1(
                  image: "assets/images/arizonaUniversity.png",
                  title: "The University of Arizona",
                  desc: "Bachelor of Art and Design",
                  desc1: "2012 - 2015",
                  icon: "assets/icons/edit.svg",
                  backcolor: Color(0xffFFFFFF),
                  bordercolor: Color(0xffD1D5DB),
                  size: 55,
                  OnClick: (){
                    // navigateTo(context, EducationView());
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
