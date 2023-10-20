import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/createAccount/selectCountry/view.dart';

import '../../core/design/customizedButtom/view.dart';
import 'cubit.dart';

class SelectWorkView extends StatelessWidget {
  const SelectWorkView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WorkCubit cubit = BlocProvider.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.h),
                Text(
                  "What type of work are you\ninterested in?",
                  style: TextStyle(
                    color: Color(0xff111827),
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Tell us what you’re interested in so we can\ncustomise the app for your needs.",
                  style: TextStyle(
                    color: Color(0xff6B7280),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 36.h),
                BlocBuilder(
                    bloc: cubit,
                    builder: (context, state) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: cubit.toggleDesign,
                                child: Container(
                                  height: 150,
                                  width: 172,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: cubit.isSelected
                                          ? Color(0xffFAFAFA)
                                          : Color(0xffD6E4FF),
                                      border: Border.all(
                                          color: cubit.isSelected
                                              ? Color(0xffD1D5DB)
                                              : Color(0xff3366FF))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 14),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: cubit.isSelected
                                              ? Color(0xffFAFAFA)
                                              : Color(0xffFFFFFF),
                                          radius: 30,
                                          child: SvgPicture.asset(
                                            "assets/icons/ui_ux_designer.svg",
                                            fit: BoxFit.scaleDown,
                                            color: cubit.isSelected
                                                ? Color(0xff111827)
                                                : Color(0xff3366FF),
                                          ),
                                        ),
                                        SizedBox(height: 16.h),
                                        Text(
                                          "UI/UX Designer",
                                          style: TextStyle(
                                            color: Color(0xff111827),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              GestureDetector(
                                onTap: cubit.toggleDesign1,
                                child: Container(
                                  height: 150,
                                  width: 172,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: cubit.isSelected1
                                          ? Color(0xffFAFAFA)
                                          : Color(0xffD6E4FF),
                                      border: Border.all(
                                          color: cubit.isSelected1
                                              ? Color(0xffD1D5DB)
                                              : Color(0xff3366FF))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 14),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: cubit.isSelected1
                                              ? Color(0xffFAFAFA)
                                              : Color(0xffFFFFFF),
                                          radius: 30,
                                          child: SvgPicture.asset(
                                            "assets/icons/ilustrator_designer.svg",
                                            fit: BoxFit.scaleDown,
                                            color: cubit.isSelected1
                                                ? Color(0xff111827)
                                                : Color(0xff3366FF),
                                          ),
                                        ),
                                        SizedBox(height: 16.h),
                                        Text(
                                          "Ilustrator Designer",
                                          style: TextStyle(
                                            color: Color(0xff111827),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: cubit.toggleDesign2,
                                child: Container(
                                  height: 150,
                                  width: 172,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: cubit.isSelected2
                                          ? Color(0xffFAFAFA)
                                          : Color(0xffD6E4FF),
                                      border: Border.all(
                                          color: cubit.isSelected2
                                              ? Color(0xffD1D5DB)
                                              : Color(0xff3366FF))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 14),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: cubit.isSelected2
                                              ? Color(0xffFAFAFA)
                                              : Color(0xffFFFFFF),
                                          radius: 30,
                                          child: SvgPicture.asset(
                                            "assets/icons/developer.svg",
                                            fit: BoxFit.scaleDown,
                                            color: cubit.isSelected2
                                                ? Color(0xff111827)
                                                : Color(0xff3366FF),
                                          ),
                                        ),
                                        SizedBox(height: 16.h),
                                        Text(
                                          "Developer",
                                          style: TextStyle(
                                            color: Color(0xff111827),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              GestureDetector(
                                onTap: cubit.toggleDesign3,
                                child: Container(
                                  height: 150,
                                  width: 172,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: cubit.isSelected3
                                          ? Color(0xffFAFAFA)
                                          : Color(0xffD6E4FF),
                                      border: Border.all(
                                          color: cubit.isSelected3
                                              ? Color(0xffD1D5DB)
                                              : Color(0xff3366FF))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 14),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: cubit.isSelected3
                                              ? Color(0xffFAFAFA)
                                              : Color(0xffFFFFFF),
                                          radius: 30,
                                          child: SvgPicture.asset(
                                            "assets/icons/management.svg",
                                            fit: BoxFit.scaleDown,
                                            color: cubit.isSelected3
                                                ? Color(0xff111827)
                                                : Color(0xff3366FF),
                                          ),
                                        ),
                                        SizedBox(height: 16.h),
                                        Text(
                                          "Management",
                                          style: TextStyle(
                                            color: Color(0xff111827),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: cubit.toggleDesign4,
                                child: Container(
                                  height: 150,
                                  width: 172,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: cubit.isSelected4
                                          ? Color(0xffFAFAFA)
                                          : Color(0xffD6E4FF),
                                      border: Border.all(
                                          color: cubit.isSelected4
                                              ? Color(0xffD1D5DB)
                                              : Color(0xff3366FF))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 14),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: cubit.isSelected4
                                              ? Color(0xffFAFAFA)
                                              : Color(0xffFFFFFF),
                                          radius: 30,
                                          child: SvgPicture.asset(
                                            "assets/icons/information_technology.svg",
                                            fit: BoxFit.scaleDown,
                                            color: cubit.isSelected4
                                                ? Color(0xff111827)
                                                : Color(0xff3366FF),
                                          ),
                                        ),
                                        SizedBox(height: 16.h),
                                        Text(
                                          textAlign: TextAlign.start,
                                          "Information\nTechnology",
                                          style: TextStyle(
                                            color: Color(0xff111827),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              GestureDetector(
                                onTap: cubit.toggleDesign5,
                                child: Container(
                                  height: 150,
                                  width: 172,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: cubit.isSelected5
                                          ? Color(0xffFAFAFA)
                                          : Color(0xffD6E4FF),
                                      border: Border.all(
                                          color: cubit.isSelected5
                                              ? Color(0xffD1D5DB)
                                              : Color(0xff3366FF))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 14),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: cubit.isSelected5
                                              ? Color(0xffFAFAFA)
                                              : Color(0xffFFFFFF),
                                          radius: 30,
                                          child: SvgPicture.asset(
                                            "assets/icons/Research_and_analytics.svg",
                                            fit: BoxFit.scaleDown,
                                            color: cubit.isSelected5
                                                ? Color(0xff111827)
                                                : Color(0xff3366FF),
                                          ),
                                        ),
                                        SizedBox(height: 16.h),
                                        Text(
                                          "Research and\nAnalytics",
                                          style: TextStyle(
                                            color: Color(0xff111827),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 66.h),
                          CustomizeButton(
                            text: "Next",
                            color: Color(0xff3366FF),
                            color1: Color(0xffFFFFFF),
                            size: 16,
                            OnClick: () {
                              navigateTo(context, SelectCountryView());
                            },
                          ),
                        ],
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
