import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomizeButton extends StatelessWidget {
  final String text ;
  final Color color,color1;
  final double size;
  var OnClick;
   CustomizeButton({Key? key, required this.text, required this.color, required this.size, required this.color1,required this.OnClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: () {
          OnClick();
        },
        style: FilledButton.styleFrom(
          backgroundColor: color,
          minimumSize: Size(330.w, 50.h),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color1,
            fontSize: size.sp,
            fontWeight: FontWeight.w500,

          ),
        ),
      ),
    );
  }
}



class CustomizeButton1 extends StatelessWidget {
  final String text ;
  final Color color,color1;
  final double size;
  var OnClick;
  CustomizeButton1({Key? key, required this.text, required this.color, required this.size, required this.color1,required this.OnClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: () {
          OnClick();
        },
        style: FilledButton.styleFrom(
          backgroundColor: color,
          minimumSize: Size(305.w, 44.h),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color1,
            fontSize: size.sp,
            fontWeight: FontWeight.w500,

          ),
        ),
      ),
    );
  }
}
