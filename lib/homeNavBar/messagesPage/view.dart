import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/homeNavBar/messagesPage/unreadMessage/view.dart';

import '../../core/design/view.dart';

class MessagesPageView extends StatefulWidget {
  const MessagesPageView({Key? key}) : super(key: key);

  @override
  State<MessagesPageView> createState() => _MessagesPageViewState();
}

class _MessagesPageViewState extends State<MessagesPageView> {
  var _controller = TextEditingController();
  bool isSelected = false;

  List<MessageModel> list = [
    MessageModel(
        userImage: "assets/images/TwitterMsg.png",
        userName: "Twitter",
        msg: "Here is the link: http://zoom.com/abcdeefg",
        time: "12.39"),
    MessageModel(
        userImage: "assets/images/GojekMsg.png",
        userName: "Gojek Indonesia",
        msg: "Let’s keep in touch.",
        time: "12.39"),
    MessageModel(
        userImage: "assets/images/ShoopeMsg.png",
        userName: "Shoope",
        msg: "Thank You David!",
        time: "09.45"),
    MessageModel(
        userImage: "assets/images/DanaMsg.png",
        userName: "Dana",
        msg: "Thank you for your attention!",
        time: "Yesterday"),
    MessageModel(
        userImage: "assets/images/SlackMsg.png",
        userName: "Slack",
        msg: "You: I look forward to hearing from you",
        time: "12/8"),
    MessageModel(
        userImage: "assets/images/FacebookMsg.png",
        userName: "Facebook",
        msg: "You: What about the interview stage?",
        time: "12/8"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.sp),
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
              SizedBox(height: 24.h),
              Row(
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
                            padding: EdgeInsets.only(left: 24, top: 36, right: 24),
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                            onTap: () {
                                              navigateTo(context, UnReadMessagesView());
                                            },
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                            onTap: () {

                                            },
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                            onTap: () {

                                            },
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
              SizedBox(height: 28.h),
              SizedBox(
                height: 527.h,
                width: 340.w,
                child: ListView.separated(
                    itemBuilder: (context, index) => ListTile(
                        leading: Image.asset(list[index].userImage,
                            fit: BoxFit.scaleDown),
                        title: Text(
                          list[index].userName,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff111827),
                            fontWeight: FontWeight.w500,
                            wordSpacing: 1,
                          ),
                        ),
                        subtitle: Text(
                          list[index].msg,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff6B7280),
                            fontWeight: FontWeight.w400,
                            wordSpacing: 1,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                isSelected = !isSelected;
                                setState(() {});
                              },
                              child: Text(
                                list[index].time,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: isSelected
                                      ? Color(0xff6B7280)
                                      : Color(0xff3366FF),
                                  fontWeight: FontWeight.w400,
                                  wordSpacing: 1,
                                ),
                              ),
                            ),
                          ],
                        )),
                    separatorBuilder: (context, index) => Divider(
                          color: Color(0xffE5E7EB),
                          thickness: 1,
                        ),
                    itemCount: list.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
