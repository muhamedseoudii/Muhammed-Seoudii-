import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/services.dart';
import 'package:advance_expansion_tile/advance_expansion_tile.dart';

class HelpCenterView extends StatefulWidget {
  const HelpCenterView({Key? key}) : super(key: key);

  @override
  State<HelpCenterView> createState() => _HelpCenterViewState();
}

class _HelpCenterViewState extends State<HelpCenterView> {
  final GlobalKey<AdvanceExpansionTileState> _globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

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
                    SizedBox(width: 85.w),
                    Text(
                      textAlign: TextAlign.center,
                      "Help Center",
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
              SizedBox(height: 36.h),
              Padding(
                padding: EdgeInsets.only(left: 23.sp, right: 22.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 350.w,
                        height: 55.h,
                        child: TextFormField(
                          onTap: () {
                            // navigateTo(context, SearchScreenView());
                          },
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "What can we help?",
                            labelStyle: TextStyle(
                                color: Color(0xff9CA3AF),
                                wordSpacing: 0.5,
                                fontSize: 14),
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            prefixIcon: SvgPicture.asset(
                                "assets/icons/search.svg",
                                fit: BoxFit.scaleDown),
                            hintText: "Type something...",
                            hintStyle: TextStyle(
                                color: Color(0xff9CA3AF), fontSize: 14),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.r),
                              borderSide: BorderSide(
                                  color: Color(0xffD1D5DB), width: 3),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.r),
                              borderSide: BorderSide(color: Color(0xffFF472B)),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.r),
                              borderSide: BorderSide(
                                  color: Color(0xffFF472B), width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.r),
                              borderSide: BorderSide(color: Color(0xffD1D5DB)),
                              gapPadding: 5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 28.h),
                    ExpansionTileGroup(
                      toggleType: ToggleType.expandOnlyCurrent,
                      spaceBetweenItem: 16.sp,
                      children: [
                        ExpansionTileItem(
                          title: Text(
                            'Lorem ipsum dolor sit amet',
                            style: TextStyle(
                              color: Color(0xff111827),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
                          expendedBorderColor:  Color(0xffD1D5DB),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                  color: Color(0xffD1D5DB), width: 1.w)),
                          children: [
                            Text(
                              textAlign: TextAlign.left,
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate. Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
                              style: TextStyle(
                                color: Color(0xff6B7280),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        ExpansionTileItem(
                          title: Text(
                            'Lorem ipsum dolor sit amet',
                            style: TextStyle(
                              color: Color(0xff111827),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
                          expendedBorderColor: Colors.blue,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                  color: Color(0xffD1D5DB), width: 1.w)),
                          children: [
                            Text(
                              textAlign: TextAlign.left,
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate. Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
                              style: TextStyle(
                                color: Color(0xff6B7280),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        ExpansionTileItem(
                          title: Text(
                            'Lorem ipsum dolor sit amet',
                            style: TextStyle(
                              color: Color(0xff111827),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
                          expendedBorderColor: Colors.blue,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                  color: Color(0xffD1D5DB), width: 1.w)),
                          children: [
                            Text(
                              textAlign: TextAlign.left,
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate. Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
                              style: TextStyle(
                                color: Color(0xff6B7280),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        ExpansionTileItem(
                          title: Text(
                            'Lorem ipsum dolor sit amet',
                            style: TextStyle(
                              color: Color(0xff111827),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
                          expendedBorderColor: Colors.blue,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                  color: Color(0xffD1D5DB), width: 1.w)),
                          children: [
                            Text(
                              textAlign: TextAlign.left,
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate. Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
                              style: TextStyle(
                                color: Color(0xff6B7280),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        ExpansionTileItem(
                          title: Text(
                            'Lorem ipsum dolor sit amet',
                            style: TextStyle(
                              color: Color(0xff111827),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
                          expendedBorderColor: Colors.blue,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                  color: Color(0xffD1D5DB), width: 1.w)),
                          children: [
                            Text(
                              textAlign: TextAlign.left,
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate. Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
                              style: TextStyle(
                                color: Color(0xff6B7280),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        ExpansionTileItem(
                          title: Text(
                            'Lorem ipsum dolor sit amet',
                            style: TextStyle(
                              color: Color(0xff111827),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
                          expendedBorderColor: Colors.blue,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                  color: Color(0xffD1D5DB), width: 1.w)),
                          children: [
                            Text(
                              textAlign: TextAlign.left,
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate. Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
                              style: TextStyle(
                                color: Color(0xff6B7280),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
