import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/design/customizedButtom/view.dart';
import '../../core/design/view.dart';
import 'cubit.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    ExperienceCubit cubit = BlocProvider.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:  EdgeInsets.only(bottom: 24.sp),
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
                        SizedBox(width: 85.w),
                        Text(
                          textAlign: TextAlign.center,
                          "Experience",
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
                  BlocBuilder(
                      bloc: cubit,
                      builder: (context, state) {
                      return Center(
                        child: Form(
                          key: cubit.formkey,
                          child: Container(
                            width: 330.w,
                            height: 640.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Color(0xffFFFFFF),
                                border:
                                Border.all(color: Color(0xffD1D5DB), width: 1.w)),
                            child: Padding(
                              padding: EdgeInsets.only( left: 12.sp, right: 12.sp, top: 12.sp, bottom: 14.sp),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    textAlign: TextAlign.center,
                                    "Position",
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
                                    Controller: cubit.controller1,
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    textAlign: TextAlign.center,
                                    "Type of work",
                                    style: TextStyle(
                                      color: Color(0xff9CA3AF),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      wordSpacing: 1,
                                    ),
                                  ),
                                  SizedBox(height: 6.h),
                                  Container(
                                    height: 60.h,
                                    width: 305.w,
                                    child: TextFormField(
                                      controller: cubit.controller5,
                                      decoration: InputDecoration(
                                        suffixIcon: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: DropdownButtonFormField<String>(
                                            icon: SvgPicture.asset(
                                                "assets/icons/arrow-down.svg",
                                                fit: BoxFit.scaleDown,
                                                color: Colors.black),
                                            value: cubit.selectedDropdownItem,
                                            items:
                                            cubit.dropdownItems.map((String item) {
                                              return DropdownMenuItem<String>(
                                                value: item,
                                                child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 15),
                                                  child: Text(
                                                    item,
                                                    style: TextStyle(
                                                        color: Color(0xff1F2937),
                                                        fontSize: 16,
                                                        fontWeight:
                                                        FontWeight.w500),
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: cubit.toggleDesign,
                                            decoration: InputDecoration(
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xffFFFFFF),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xffD1D5DB), width: 2.w),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(10.r),
                                          borderSide: BorderSide(
                                              color: Color(0xffD1D5DB)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    textAlign: TextAlign.center,
                                    "Company name",
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
                                    Controller: cubit.controller2,
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    textAlign: TextAlign.center,
                                    "Location",
                                    style: TextStyle(
                                      color: Color(0xff9CA3AF),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      wordSpacing: 1,
                                    ),
                                  ),
                                  SizedBox(height: 6.h),
                                  TextFieldApp1(
                                    sizeH: 60,
                                    sizeW: 305,
                                    Controller: cubit.controller3,
                                  ),
                                  SizedBox(height: 4.h),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(

                                        visualDensity: VisualDensity.compact,
                                        onPressed: cubit.toggleCheck,
                                        icon: cubit.check
                                            ? SvgPicture.asset(
                                          "assets/icons/Checkbox.svg",width: 24.w,height: 24.h
                                        )
                                            : SvgPicture.asset(
                                          "assets/icons/unCheckbox.svg",width: 24.w,height: 24.h,
                                        ),

                                      ),
                                      SizedBox(width: 4.w),
                                      Text(
                                        "I am currently working in this role",
                                        style: TextStyle(
                                          color: Color(0xff111827),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
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
                                  TextFieldApp(
                                    sizeH: 60,
                                    sizeW: 305,
                                    Controller: cubit.controller4,
                                  ),
                                  SizedBox(height: 32.h),
                                  cubit.isLoading
                                      ? Center(
                                    child: CircularProgressIndicator(),
                                  )
                                      : CustomizeButton1(
                                    text: "Save",
                                    color: Color(0xff3366FF),
                                    color1: Color(0xffFFFFFF),
                                    size: 14,
                                    OnClick: () {
                                      if (cubit.formkey.currentState!.validate()) {
                                        // Passwords are valid and match
                                        // Perform further actions like saving the password
                                        // navigateTo(context, TypeOfWorkView());
                                        cubit.login(context);
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
                      );
                    }
                  ),
                  SizedBox(height: 30.h),
                  ProfileContainer1(
                    image: "assets/images/remote.png",
                    title: "Senior UI/UX Designer",
                    desc: "Remote • GrowUp Studio",
                    desc1: "2019 - 2022",
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
            ),
          ],
        ),
      ),
    );
  }
}
