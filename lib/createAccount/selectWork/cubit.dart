import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/createAccount/selectWork/states.dart';

class WorkCubit extends Cubit<WorkStates> {
  WorkCubit() : super(WorkStates());

  bool isSelected = true;
  bool isSelected1 = true;
  bool isSelected2 = true;
  bool isSelected3 = true;
  bool isSelected4 = true;
  bool isSelected5 = true;



  toggleDesign() {
    isSelected = !isSelected;
    // setState(() {});
    emit(ToggleState());
  }

  toggleDesign1() {
    isSelected1 = !isSelected1;
    // setState(() {});
    emit(ToggleState1());
  }

  toggleDesign2() {
    isSelected2 = !isSelected2;
    // setState(() {});
    emit(ToggleState2());
  }

  toggleDesign3() {
    isSelected3 = !isSelected3;
    // setState(() {});
    emit(ToggleState3());
  }

  toggleDesign4() {
    isSelected4 = !isSelected4;
    // setState(() {});
    emit(ToggleState4());
  }

  toggleDesign5() {
    isSelected5 = !isSelected5;
    // setState(() {});
    emit(ToggleState5());
  }


}
