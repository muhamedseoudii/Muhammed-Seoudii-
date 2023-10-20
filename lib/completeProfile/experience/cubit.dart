import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/completeProfile/experience/states.dart';



class ExperienceCubit extends Cubit<ExperienceStates> {
  ExperienceCubit() : super(ExperienceStates());

  final formkey = GlobalKey<FormState>();

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();

  bool check = false;

  List<String> dropdownItems = [
    'full',
    'Part Time',
    'Remote'
  ];
  String? selectedDropdownItem;

  toggleDesign(String? newValue) {
    selectedDropdownItem = newValue!;
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
    emit(ExperienceLoadingState());
    try {
      final response = await Dio().post(
        "https://project2.amit-learning.com/api/experince",
        data: {
          "postion": controller1.text,
          "comp_name" : controller2.text,
          "location" : controller3.text,
          "start" : controller4.text,
          "type_work" : controller5.text
        },
      );
      print(response.data);
      emit(ExperienceSuccessState());
    } on DioException {
      isFailed = true;
    }
    isLoading = false;
    // setState(() {});
    emit(ExperienceFailedState());
    isFailed
        ? ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Failed!"),
        duration: Duration(seconds: 10),
      ),
    )
        : Navigator.pop(context);
  }


}
