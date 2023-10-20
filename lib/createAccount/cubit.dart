import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/createAccount/selectWork/view.dart';
import 'package:jobsque/createAccount/states.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/logic/helper_methods.dart';

class SignInCubit extends Cubit<SignInStates> {
  SignInCubit() : super(SignInStates());
  final foormkey = GlobalKey<FormState>();

  bool obscureT = false;


  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  Future<void> launchURLl (String url) async {
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



  bool isLoading = false;
  bool isFailed = false;

  login(context) async {
    isLoading = true;
    // setState(() {});
    emit(SignInLoadingState());
    try {
      final respone = await Dio().post(
        "https://project2.amit-learning.com/api/auth/register",
        data: {
          "name":controller1.text,
          "email": controller2.text,
          "password": controller3.text,
        },
      );
      print(respone.data);
      emit(SignInSuccessState());
    } on DioException {
      isFailed = true;
    }
    isLoading = false;
    // setState(() {});
    emit(SignInFailedState());
    isFailed
        ? ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Failed!"),
        duration: Duration(seconds: 20),
      ),
    )
        : navigateTo(context, SelectWorkView());
  }

}
