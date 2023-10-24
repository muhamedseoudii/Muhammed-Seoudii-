import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/signUp/states.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/logic/helper_methods.dart';
import '../homeNavBar/view.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginStates());


  final foormkey = GlobalKey<FormState>();
  bool obscureT = false;
  bool check = false;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();



  Future<void> launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "can not launch url ";
    }
  }

  toggleDesign() {
    obscureT = !obscureT;
    // setState(() {});
    emit(ToggleState());
  }

  toggleCheck() {
    check = !check;
    // setState(() {});
    emit(ToggleState1());
  }

  bool isLoading = false;
  bool isFailed = false;

  login(context) async {
    isLoading = true;
    // setState(() {});
    emit(LoginLoadingState());
    try {
      final respone = await Dio().post(
        "https://project2.amit-learning.com/api/auth/login",
        data: {
          "email": controller1.text,
          "password": controller2.text,
        },
      );
      print(respone.data);
      emit(LoginSuccessState());
    } on DioException {
      isFailed = true;
    }
    isLoading = false;
    emit(LoginFailedState());
    // setState(() {});
    isFailed
        ? ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Failed!"),
              duration: Duration(seconds: 20),
            ),
          )
        : navigateTo(context, MyHomePage(title: "home"));

  }
  void loadSavedCredentials() async {
    final String? savedEmail = await SharedPreferencesHelper.getEmail();
    final String? savedPassword = await SharedPreferencesHelper.getPassword();

    if (savedEmail != null && savedPassword != null) {
      emit(SetPref());
      controller1.text = savedEmail;
      controller2.text = savedPassword;

    }
  }


  void loginPrefs() async {
    final String email = controller1.text;
    final String password = controller2.text;

    await SharedPreferencesHelper.saveEmail(email);
    await SharedPreferencesHelper.savePassword(password);

  }


}
