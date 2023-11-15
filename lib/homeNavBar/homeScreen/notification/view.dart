import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/homeNavBar/homeScreen/notification/notificationIlustration/view.dart';

import '../../../core/design/view.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  List<NotificationModel> list = [
    NotificationModel(
      userImage: "assets/images/DanaLogo.png",
      userName: "Dana",
      icon: "assets/icons/dot.svg",
      message: "Posted new design jobs",
      time: "10.00AM",
    ),
    NotificationModel(
      userImage: "assets/images/ShoopeLogo.png",
      userName: "Shoope ",
      icon: "assets/icons/dot.svg",
      message: "Posted new design jobs",
      time: "10.00AM",
    ),
    NotificationModel(
      userImage: "assets/images/SlackLogo.png",
      userName: "Slack",
      icon: "assets/icons/dot.svg",
      message: "Posted new design jobs",
      time: "10.00AM",
    ),
    NotificationModel(
      userImage: "assets/images/FacebookLogo.png",
      userName: "Facebook",
      icon: "assets/icons/dot.svg",
      message: "Posted new design jobs",
      time: "10.00AM",
    ),
  ];

  List<NotificationModel> list2 = [
    NotificationModel(
      userImage: "assets/images/Emaillogo.png",
      userName: "Email setup successful",
      icon: "assets/icons/dot.svg",
      message:
          "Your email setup was successful with the following details: Your new email is rafifdianganz@gmail.com.",
      time: "10.00AM",
    ),
    NotificationModel(
      userImage: "assets/images/JobsqueLogo.png",
      userName: "Welcome to Jobsque",
      icon: "",
      message:
          "Hello Rafif Dian Axelingga, thank you for registering Jobsque. Enjoy the various features that....",
      time: "08.00AM",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Text(
                    textAlign: TextAlign.center,
                    "Notification",
                    style: TextStyle(
                      color: Color(0xff111827),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      wordSpacing: 1,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          list.clear();
                        });
                        // navigateTo(context, NotificationIlustrationView());
                      },
                      icon: Icon(Icons.delete_outline)),
                ],
              ),
            ),
            Container(
              height: 36.h,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffE5E7EB),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(width: 24.w),
                    Text(
                      'New',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff6B7280),
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 330.h,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: list.isEmpty
                    ? Center(child: NotificationIlustrationView())
                    : ListView.separated(
                        itemBuilder: (context, index) => ListTile(
                            leading: Image.asset(list[index].userImage,
                                fit: BoxFit.scaleDown),
                            title: Text(
                              list[index].userName,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff111827),
                                fontWeight: FontWeight.w500,
                                wordSpacing: 1,
                              ),
                            ),
                            subtitle: Text(
                              list[index].message,
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff6B7280),
                                fontWeight: FontWeight.w400,
                                wordSpacing: 1,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            trailing: SizedBox(
                              width: 67,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    list[index].icon,
                                    fit: BoxFit.scaleDown,
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    list[index].time,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff6B7280),
                                      fontWeight: FontWeight.w400,
                                      wordSpacing: 1,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        separatorBuilder: (context, index) => Divider(
                              color: Color(0xffE5E7EB),
                              thickness: 1,
                            ),
                        itemCount: list.length),
              ),
            ),
            // Divider(
            //   color: Color(0xffE5E7EB),
            //   thickness: 1,
            //   endIndent: 20,
            //   indent: 20,
            // ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 36.h,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffE5E7EB),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(width: 24.w),
                    Text(
                      'Yesterday',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff6B7280),
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 200.h,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ListView.separated(
                    itemBuilder: (context, index) => ListTile(
                        leading: Image.asset(list2[index].userImage,
                            fit: BoxFit.scaleDown),
                        title: Text(
                          list2[index].userName,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff111827),
                            fontWeight: FontWeight.w500,
                            wordSpacing: 1,
                          ),
                        ),
                        subtitle: Text(
                          list2[index].message,
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color(0xff6B7280),
                            fontWeight: FontWeight.w400,
                            wordSpacing: 1.sp,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: SizedBox(
                          width: 67.w,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                list2[index].icon,
                                fit: BoxFit.scaleDown,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                list2[index].time,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xff6B7280),
                                  fontWeight: FontWeight.w400,
                                  wordSpacing: 1.sp,
                                ),
                              ),
                            ],
                          ),
                        )),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 30.h,
                          child: Divider(
                            color: Color(0xffE5E7EB),
                            thickness: 1,
                          ),
                        ),
                    itemCount: list2.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
