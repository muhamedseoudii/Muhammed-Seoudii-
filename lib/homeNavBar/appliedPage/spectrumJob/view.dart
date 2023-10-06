import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../core/design/customizedButtom/view.dart';

class SpectrumJobView extends StatefulWidget {
  const SpectrumJobView({Key? key}) : super(key: key);

  @override
  State<SpectrumJobView> createState() => _SpectrumJobViewState();
}

class _SpectrumJobViewState extends State<SpectrumJobView> {
  final formkey = GlobalKey<FormState>();
  FocusNode focusNode = FocusNode();

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

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
              Center(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/SpectrumLogo.svg",
                      width: 48.w,
                      height: 48.h,
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      textAlign: TextAlign.center,
                      "UI/UX Designer",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      textAlign: TextAlign.center,
                      "Spectrum • Jakarta, Indonesia ",
                      style: TextStyle(
                        color: Color(0xff374151),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 45,right: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/right-circle.svg",fit: BoxFit.scaleDown,),
                              SizedBox(height: 8.w),
                              Text(
                                textAlign: TextAlign.center,
                                "Biodata",
                                style: TextStyle(
                                  color: Color(0xff3366FF),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  wordSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset("assets/icons/Line1.svg",fit: BoxFit.scaleDown,),
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/circle.svg",fit: BoxFit.scaleDown,),
                              SizedBox(height: 8.w),
                              Text(
                                textAlign: TextAlign.center,
                                "Type of work",
                                style: TextStyle(
                                  color: Color(0xff111827),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  wordSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset("assets/icons/Line1.svg",fit: BoxFit.scaleDown,),
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/circle1.svg",fit: BoxFit.scaleDown,),
                              SizedBox(height: 8.w),
                              Text(
                                textAlign: TextAlign.center,
                                "Upload portfolio",
                                style: TextStyle(
                                  color: Color(0xff111827),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
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
              ),
              SizedBox(height: 32.h),
              Form(
                key: formkey,
                child: Padding(
                  padding:
                  EdgeInsets.only(left: 24.sp, right: 24.sp,bottom: 24.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Biodata",
                        style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        "Fill in your bio data correctly",
                        style: TextStyle(
                          color: Color(0xff6B7280),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 28.h),
                      Text(
                        "Full Name",
                        style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 80.h,
                        width: 327.w,
                        child: TextFormField(
                          controller: controller1,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Username",
                            labelStyle: TextStyle(
                              color: Color(0xff9CA3AF),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: SvgPicture.asset(
                                "assets/icons/profile.svg",
                                fit: BoxFit.scaleDown),
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Color(0xffD1D5DB), width: 3),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF472B)),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Color(0xffFF472B), width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Color(0xffD1D5DB), width: 2),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Full Name';
                            }
                            return null;
                          },
                        ),
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 80.h,
                        width: 327.w,
                        child: TextFormField(
                          controller: controller2,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                              color: Color(0xff9CA3AF),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: SvgPicture.asset("assets/icons/sms.svg",
                                fit: BoxFit.scaleDown),
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD1D5DB),width: 3,style: BorderStyle.solid),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF472B)),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF472B),width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Color(0xffD1D5DB), width: 2),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please confirm your Email';
                            }
                            return null;
                          },
                        ),
                      ),
                      Text(
                        "No.Handphone",
                        style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 80.h,
                        width: 327.w,
                        child: IntlPhoneField(
                          focusNode: focusNode,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xffD1D5DB), width: 2),
                            ),
                          ),
                          languageCode: "en",
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                          onCountryChanged: (country) {
                            print('Country changed to: ' + country.name);
                          },
                        ),
                      ),
                      SizedBox(height: 70.h),
                      CustomizeButton(
                        text: "Next",
                        color: Color(0xff3366FF),
                        color1: Color(0xffFFFFFF),
                        size: 16,
                        OnClick: () {
                          if (formkey.currentState!.validate()) {
                            // Passwords are valid and match
                            // Perform further actions like saving the password
                            // navigateTo(context, TypeOfWorkView());
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
