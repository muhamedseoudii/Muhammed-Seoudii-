import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:jobsque/jobDetail/typeOfWork/view.dart';

import '../../core/logic/helper_methods.dart';

class BioDataView extends StatefulWidget {
  const BioDataView({Key? key}) : super(key: key);

  @override
  State<BioDataView> createState() => _BioDataViewState();
}

class _BioDataViewState extends State<BioDataView> {
  final foormkey = GlobalKey<FormState>();

  FocusNode focusNode = FocusNode();

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                SizedBox(height: 34.h),
                Padding(
                  padding: const EdgeInsets.only(left: 35,right: 25),
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
                SizedBox(height: 32.h),
                Form(
                  key: foormkey,
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
                      SizedBox(height: 34.h),
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
                      SizedBox(height: 110.h),
                      Center(
                        child: Container(
                          height: 50,
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
                              if (foormkey.currentState!.validate()) {
                                // Passwords are valid and match
                                // Perform further actions like saving the password
                                navigateTo(context, TypeOfWorkView());
                              }
                            },
                            child: Text(
                              "Next",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
