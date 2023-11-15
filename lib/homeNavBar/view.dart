import 'package:flutter/material.dart';
import 'package:jobsque/homeNavBar/homeBarView.dart';

import 'appliedPage/view.dart';
import 'homeScreen/view.dart';
import 'messagesPage/view.dart';
import 'profilePage/view.dart';
import 'savedPaged/view.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({super.key, required this.title});

  static List<Widget> pages = const [
    HomeScreenView(),
    MessagesPageView(),
    AppliedPageView(),
    SavedPageView(),
    ProfilePageView()
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
        body: Center(
          child: PageView.builder(
            itemCount: pages.length,
            controller: controller,
            itemBuilder: (context, index) => pages[index],
          ),
          // pages[currentPage],
        ),
        bottomNavigationBar: HomeBarView(
          controller: controller,
        ));
  }
}
