import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../signUp/view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currPage = 0;
  List<String> title = ["Find Food You Love", "Fast Delivery", "Live Tracking"];
  List<String> desc = [
    "Discover the best foods from over 1,000\n restaurants and fast delivery to your doorstep",
    "Fast food delivery to your home, office\n wherever you are",
    "Real time tracking of your food on the app\n once you placed the order"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/Jobsque.png",
                      fit: BoxFit.scaleDown,
                      height: 19,
                      width: 81,
                    ),
                    TextButton(
                      onPressed: () {
                        if (currPage == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpView(),
                              ));
                        } else {
                          currPage++;
                          setState(() {});
                        }
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: Color(0xff6B7280),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 313.h,
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (value) {
                    print(value);
                    currPage = value;
                    setState(() {});
                  },
                  children: List.generate(
                    3,
                    (index) => Image.asset(
                      "assets/images/Background${currPage + 1}.png",
                      height: 424.h,
                      width: 375.w,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 24),
                    ...List.generate(
                      1,
                      (index) => Image.asset(
                        "assets/images/Tittle${currPage + 1}.png",
                        height: 180.h,
                        width: 327.w,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => Padding(
                          padding: EdgeInsetsDirectional.only(end: 5),
                          child: CircleAvatar(
                            radius: 3.5,
                            backgroundColor: Color(
                                index == currPage ? 0xff3366FF : 0xffADC8FF),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 46),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28)),
                          backgroundColor: Color(0xff3366FF),
                          fixedSize: Size.fromHeight(50)),
                      onPressed: () {
                        if (currPage == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpView(),
                              ));
                        } else {
                          currPage++;
                          setState(() {});
                        }
                      },
                      child: Text(
                        currPage == 2 ? "Get Started" : "Next",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
