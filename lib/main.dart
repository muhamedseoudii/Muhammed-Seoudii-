import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/createAccount/selectWork/cubit.dart';

import 'completeProfile/experience/cubit.dart';
import 'core/logic/helper_methods.dart';
import 'createAccount/cubit.dart';
import 'forgetPass/createPass/cubit.dart';
import 'forgetPass/cubit.dart';
import 'signUp/cubit.dart';
import 'splash/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => SignInCubit(),
        ),
        BlocProvider(
          create: (context) => ExperienceCubit(),
        ),
        BlocProvider(
          create: (context) => WorkCubit(),
        ),
        BlocProvider(
          create: (context) => ForgetPassCubit(),
        ),
        BlocProvider(
          create: (context) => CreatePassCubit(),
        ),

      ],
      child: ScreenUtilInit(
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
          }),
    );
  }
}

