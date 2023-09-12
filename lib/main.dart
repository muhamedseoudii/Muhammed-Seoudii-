import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/logic/helper_methods.dart';
import 'splash/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Jobsque',
            theme: ThemeData(
                platform: TargetPlatform.iOS,
                fontFamily: "SFDisplay",
                primarySwatch: getMaterialColor(Color(0xff3366FF)),
                scaffoldBackgroundColor: getMaterialColor(Color(0xffFFFFFF)),
                appBarTheme: AppBarTheme(
                    backgroundColor: Colors.white,
                    iconTheme: IconThemeData(color: Colors.black),
                    titleTextStyle: TextStyle(color: Colors.black)),
                textTheme: TextTheme(
                    bodyMedium: TextStyle(color: Colors.black)),
                iconTheme: IconThemeData(color: Colors.black)),
            darkTheme: ThemeData(
                platform: TargetPlatform.iOS,
                fontFamily: "SFDisplay",
                scaffoldBackgroundColor: Colors.black,
                primarySwatch: getMaterialColor(Color(0xff3366FF)),
                appBarTheme: AppBarTheme(
                    backgroundColor: Colors.black,
                    iconTheme: IconThemeData(color: Colors.white),
                    titleTextStyle: TextStyle(color: Colors.white)),
                textTheme: TextTheme(
                    bodyMedium: TextStyle(color: Colors.white)),
                iconTheme: IconThemeData(color: Colors.white)),
            home: SplashView(),
          );
        });
  }
}

