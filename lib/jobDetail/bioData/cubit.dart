import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/jobDetail/bioData/states.dart';

import '../../core/logic/helper_methods.dart';
import '../typeOfWork/view.dart';


class BioDataCubit extends Cubit<BioDataStates> {
  BioDataCubit() : super(BioDataStates());

  final foormkey = GlobalKey<FormState>();

  FocusNode focusNode = FocusNode();

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();


  bool isLoading = false;
  bool isFailed = false;

  getBioData(context) async {
    isLoading = true;
    // setState(() {});
    emit(BioDataLoadingState());
    try {
      final respone = await Dio().post(
        "https://project2.amit-learning.com/api/apply",
        data: {
          "name": controller1.text,
          "email": controller2.text,
          "mobile": controller3.text,
        },
      );
      print(respone.data);
      emit(BioDataSuccessState());
    } on DioException {
      isFailed = true;
    }
    isLoading = false;
    emit(BioDataFailedState());
    // setState(() {});
    isFailed
        ? ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Failed!"),
        duration: Duration(seconds: 20),
      ),
    )
        :   navigateTo(context, TypeOfWorkView());

  }






}
