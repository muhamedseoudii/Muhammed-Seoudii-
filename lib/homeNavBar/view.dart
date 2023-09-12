import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'appliedPage/view.dart';
import 'homeScreen/view.dart';
import 'messagesPage/view.dart';
import 'profilePage/view.dart';
import 'savedPaged/view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<Widget> pages = [
    HomeScreenView(),
    MessagesPageView(),
    AppliedPageView(),
    SavedPageView(),
    ProfilePageView()
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[currentPage],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        padding: const EdgeInsets.only(top: 12),
        notchMargin: 10,
        child: Row(
          children: [
            _ItemBottom(
              isSelected: currentPage == 0,
              unselectedImage: "home",
              image: "home1",
              title: "Home",
              onTap: () {
                currentPage = 0;
                setState(() {});
              },
            ),
            _ItemBottom(
              unselectedImage: "message",
              isSelected: currentPage == 1,
              image: "message1",
              title: "Messages",
              onTap: () {
                currentPage = 1;
                setState(() {});
              },
            ),
            _ItemBottom(
                isSelected: currentPage == 2,
                image: "briefcase1",
                unselectedImage: "briefcase",
                title: "Applied",
                onTap: () {
                  currentPage = 2;
                  setState(() {});
                }),
            _ItemBottom(
              isSelected: currentPage == 3,
              image: "save1",
              unselectedImage: "save",
              title: "Saved",
              onTap: () {
                currentPage = 3;
                setState(() {});
              },
            ),
            _ItemBottom(
              isSelected: currentPage == 4,
              image: "profile1",
              unselectedImage: "profile",
              title: "Profile",
              onTap: () {
                currentPage = 4;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemBottom extends StatelessWidget {
  final String title, image, unselectedImage;
  final VoidCallback onTap;
  final bool isSelected;

  const _ItemBottom(
      {Key? key,
      required this.title,
      required this.image,
      required this.onTap,
      this.isSelected = false,
      required this.unselectedImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Color(0xffFFFFFF),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                height: 24.h,
                width: 24.w,
                isSelected
                    ? "assets/icons/${image}.svg"
                    : "assets/icons/${unselectedImage}.svg",
                // color: isSelected ? Theme.of(context).primaryColor : null,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,
                    color: isSelected ? Theme.of(context).primaryColor : Color(0xff9CA3AF)),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
