import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/forgetPass/states.dart';
import '../core/logic/helper_methods.dart';
import 'checkEmail/view.dart';


class ForgetPassCubit extends Cubit<ForgetPassStates> {
  ForgetPassCubit() : super(ForgetPassStates());

  final formmKey = GlobalKey<FormState>();
  final controller1 = TextEditingController();



  bool isLoading = false;
  bool isFailed = false;

  login(context) async {
    isLoading = true;
    // setState(() {});
    emit(ForPassLoadingState());
    try {
      final respone = await Dio().post(
        "https://project2.amit-learning.com/api/auth/login?login=https://project2.amit-learning.com/api",
        data: {
          "email": controller1.text,
        },
      );
      print(respone.data);
      emit(ForPassSuccessState());
    } on DioException {
      isFailed = true;
    }
    isLoading = false;
    emit(ForPassFailedState());
    // setState(() {});
    isFailed
        ? ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Failed!"),
        duration: Duration(seconds: 20),
      ),
    )
        :  navigateTo(context, CheckEmailView());
  }

}
