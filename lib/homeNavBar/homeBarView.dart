import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeBarView extends StatefulWidget {
  final PageController controller;
  const HomeBarView({Key? key, required this.controller}) : super(key: key);

  @override
  State<HomeBarView> createState() => _HomeBarViewState();
}

class _HomeBarViewState extends State<HomeBarView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controller.addListener(() {
      setState(() {
        currentPage = widget.controller.page!.round();
      });
    });
  }

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      padding: const EdgeInsets.only(top: 12),
      notchMargin: 10,
      child: Row(
        children: [
          ItemBottom(
            isSelected: currentPage == 0,
            unselectedImage: "home",
            image: "home1",
            title: "Home",
            onTap: () {
              widget.controller.jumpToPage(0);
              // currentPage = 0;
              // setState(() {});
            },
          ),
          ItemBottom(
            unselectedImage: "message",
            isSelected: currentPage == 1,
            image: "message1",
            title: "Messages",
            onTap: () {
              widget.controller.jumpToPage(1);
              // currentPage = 1;
              // setState(() {});
            },
          ),
          ItemBottom(
              isSelected: currentPage == 2,
              image: "briefcase1",
              unselectedImage: "briefcase",
              title: "Applied",
              onTap: () {
                widget.controller.jumpToPage(2);
                // currentPage = 2;
                // setState(() {});
              }),
          ItemBottom(
            isSelected: currentPage == 3,
            image: "save1",
            unselectedImage: "save",
            title: "Saved",
            onTap: () {
              widget.controller.jumpToPage(3);
              // currentPage = 3;
              // setState(() {});
            },
          ),
          ItemBottom(
            isSelected: currentPage == 4,
            image: "profile1",
            unselectedImage: "profile",
            title: "Profile",
            onTap: () {
              widget.controller.jumpToPage(4);
              // currentPage = 4;
              // setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

class ItemBottom extends StatelessWidget {
  final String title, image, unselectedImage;
  final VoidCallback onTap;
  final bool isSelected;

  const ItemBottom(
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
          color: const Color(0xffFFFFFF),
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
              const SizedBox(
                height: 6,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: isSelected
                        ? Theme.of(context).primaryColor
                        : const Color(0xff9CA3AF)),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
