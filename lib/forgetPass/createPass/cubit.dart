import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/forgetPass/createPass/states.dart';

class CreatePassCubit extends Cubit<CreatePassStates> {
  CreatePassCubit() : super(CreatePassStates());

  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool obscureT = false;
  bool obscureT2 = false;

  toggleDesign() {
    obscureT = !obscureT;
    // setState(() {});
    emit(ToggleState());
  }

  toggleDesign1() {
    obscureT2 = !obscureT2;
    // setState(() {});
    emit(ToggleState1());
  }

}