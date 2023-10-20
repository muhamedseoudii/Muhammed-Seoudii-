import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/homeNavBar/profilePage/loginAndSecurity/view.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:quiver/async.dart';

import '../../../../../core/design/customizedButtom/view.dart';
import '../../../../../core/logic/helper_methods.dart';

class PinCodeView extends StatefulWidget {
  const PinCodeView({Key? key}) : super(key: key);

  @override
  State<PinCodeView> createState() => _PinCodeViewState();
}

class _PinCodeViewState extends State<PinCodeView> {
  final intRegex = RegExp(r'\d+', multiLine: true);
  TextEditingController textEditingController =
      new TextEditingController(text: "");

  int countdown = 59;
  CountdownTimer? timer;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    timer = CountdownTimer(
      Duration(seconds: countdown),
      Duration(seconds: 1),
    );
    timer!.listen((event) {
      setState(() {
        countdown = event.remaining.inSeconds;
      });

      if (countdown == 0) {
        timer!.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  final otpController = TextEditingController();

  bool isLoading = false;
  bool isFailed = false;

  login() async {
    isLoading = true;
    setState(() {});
    try {
      final response = await Dio().post(
        "https://project2.amit-learning.com/api/auth/otp",
        data: {
          "email": otpController.text,
        },
      );
      print(response.data);
    } on DioException {
      isFailed = true;
    }
    isLoading = false;
    setState(() {});
    isFailed
        ? ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Failed!"),
              duration: Duration(seconds: 10),
            ),
          )
        : navigateTo(context, LoginAndSecurityView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15.sp, top: 24.sp, left: 15.sp),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(
                        "assets/icons/arrow-left.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    SizedBox(width: 50.w),
                    Text(
                      textAlign: TextAlign.center,
                      "Two-step verification",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36.h),
              Padding(
                padding: EdgeInsets.only(left: 23.sp, right: 22.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter the 6 digit code",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      "Please confirm your account by entering the\nauthorization code sen to ****-****-7234",
                      style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    OTPTextField(
                      // controller: otpController.text,
                      length: 4,
                      keyboardType: TextInputType.number,
                      onChanged: (String code) {
                        code = otpController.text;
                      },
                      outlineBorderRadius: 10.r,
                      otpFieldStyle: OtpFieldStyle(
                          enabledBorderColor: Color(0xffD1D5DB),
                          errorBorderColor: Color(0xffFF472B)),
                      width: MediaQuery.of(context).size.width,
                      fieldWidth: 45.w,
                      style: TextStyle(fontSize: 14.sp),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.box,
                      onCompleted: (String pin) {
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: Text("Verification Pin Code"),
                                content: Text('Code entered is $pin'),
                              );
                            }
                        );

                      },
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Text(
                          "Resend code",
                          style: TextStyle(
                              color: Color(0xff9CA3AF),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          countdown > 0 ? " $countdown s" : "Again",
                          style: TextStyle(
                            color: Color(0xff3366FF),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 453.h,
                    ),
                    isLoading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : CustomizeButton(
                            text: "Verify",
                            color: Color(0xff3366FF),
                            color1: Color(0xffFFFFFF),
                            size: 16,
                            OnClick: () {
                              login();
                            },
                          ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
