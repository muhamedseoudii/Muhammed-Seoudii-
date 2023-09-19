import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MessageIlustrationView extends StatefulWidget {
  const MessageIlustrationView({Key? key}) : super(key: key);

  @override
  State<MessageIlustrationView> createState() => _MessageIlustrationViewState();
}

class _MessageIlustrationViewState extends State<MessageIlustrationView> {

  var _controller = TextEditingController();

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
                    "Messages",
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
            Padding(
              padding:  EdgeInsets.only(left: 24.sp,right: 24.sp,top: 24.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 270.w,
                    height: 50.h,
                    child: TextField(
                      controller: _controller,
                      // onChanged: (value) => _runFilter(value),
                      decoration: InputDecoration(
                        labelText: "Search messages....",
                        labelStyle: TextStyle(
                            color: Color(0xff9CA3AF),
                            wordSpacing: 0.5,
                            fontSize: 14),
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                        prefixIcon: SvgPicture.asset("assets/icons/search.svg",
                            fit: BoxFit.scaleDown),
                        suffixIcon: IconButton(
                          onPressed: () {
                            _controller.clear();
                          },
                          icon: SvgPicture.asset(
                            "assets/icons/close-circle.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        hintText: "Type something...",
                        hintStyle:
                        TextStyle(color: Color(0xff9CA3AF), fontSize: 14),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.r),
                          borderSide:
                          BorderSide(color: Color(0xffD1D5DB), width: 3),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.r),
                          borderSide: BorderSide(color: Color(0xffFF472B)),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.r),
                          borderSide:
                          BorderSide(color: Color(0xffFF472B), width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.r),
                          borderSide: BorderSide(color: Color(0xffD1D5DB)),
                          gapPadding: 5,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Color(0xffFFFFFF),
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: (context) => SizedBox(
                          height: 315.h,
                          child: Padding(
                            padding:
                            EdgeInsets.only(left: 24, top: 36, right: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Message filters",
                                  style: TextStyle(
                                    color: Color(0xff111827),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                Container(
                                  width: 328.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.r),
                                    color: Color(0xffFFFFFF),
                                    border: Border.all(
                                        color: Color(0xffD1D5DB), width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Unread",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff111827),
                                              wordSpacing: 1),
                                        ),
                                        SizedBox(width: 235.w),
                                        GestureDetector(
                                            onTap: () {},
                                            child: SvgPicture.asset(
                                                "assets/icons/arrow-right.svg",
                                                fit: BoxFit.scaleDown))
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Container(
                                  width: 328.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.r),
                                    color: Color(0xffFFFFFF),
                                    border: Border.all(
                                        color: Color(0xffD1D5DB), width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Spam",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff111827),
                                              wordSpacing: 1),
                                        ),
                                        SizedBox(width: 243.w),
                                        GestureDetector(
                                            onTap: () {},
                                            child: SvgPicture.asset(
                                                "assets/icons/arrow-right.svg",
                                                fit: BoxFit.scaleDown))
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Container(
                                  width: 328.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.r),
                                    color: Color(0xffFFFFFF),
                                    border: Border.all(
                                        color: Color(0xffD1D5DB), width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Archived",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff111827),
                                              wordSpacing: 1),
                                        ),
                                        SizedBox(width: 224.w),
                                        GestureDetector(
                                            onTap: () {},
                                            child: SvgPicture.asset(
                                                "assets/icons/arrow-right.svg",
                                                fit: BoxFit.scaleDown))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      "assets/icons/Filter1.svg",
                      fit: BoxFit.scaleDown,
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
                    "assets/images/MessageIlustration.png",
                    fit: BoxFit.scaleDown,
                    height: 173.h,
                    width: 142.w,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    textAlign: TextAlign.center,
                    "You have not received any\nmessages",
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
                    "Once your application has reached the interview\nstage, you will get a message from the recruiter.",
                    style: TextStyle(
                      color: Color(0xff6B7280),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      wordSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
