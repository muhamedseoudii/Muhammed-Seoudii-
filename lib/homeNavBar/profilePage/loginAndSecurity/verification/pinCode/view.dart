import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class PinCodeView extends StatefulWidget {
  const PinCodeView({Key? key}) : super(key: key);

  @override
  State<PinCodeView> createState() => _PinCodeViewState();
}

class _PinCodeViewState extends State<PinCodeView> {
  int _otpCodeLength = 6;
  bool _isLoadingButton = false;
  bool _enableButton = false;
  String _otpCode = "";
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final intRegex = RegExp(r'\d+', multiLine: true);
  TextEditingController textEditingController =
      new TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
    _getSignatureCode();
    _startListeningSms();
  }

  @override
  void dispose() {
    super.dispose();
    SmsVerification.stopListening();
  }

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  /// get signature code
  _getSignatureCode() async {
    String? signature = await SmsVerification.getAppSignature();
    print("signature $signature");
  }

  /// listen sms
  _startListeningSms() {
    SmsVerification.startListeningSms().then((message) {
      setState(() {
        _otpCode = SmsVerification.getCode(message, intRegex);
        textEditingController.text = _otpCode;
        _onOtpCallBack(_otpCode, true);
      });
    });
  }

  _onSubmitOtp() {
    setState(() {
      _isLoadingButton = !_isLoadingButton;
      _verifyOtpCode();
    });
  }

  _onClickRetry() {
    _startListeningSms();
  }

  _onOtpCallBack(String otpCode, bool isAutofill) {
    setState(() {
      this._otpCode = otpCode;
      if (otpCode.length == _otpCodeLength && isAutofill) {
        _enableButton = false;
        _isLoadingButton = true;
        _verifyOtpCode();
      } else if (otpCode.length == _otpCodeLength && !isAutofill) {
        _enableButton = true;
        _isLoadingButton = false;
      } else {
        _enableButton = false;
      }
    });
  }

  _verifyOtpCode() {
    FocusScope.of(context).requestFocus(new FocusNode());
    Timer(Duration(milliseconds: 4000), () {
      setState(() {
        _isLoadingButton = false;
        _enableButton = false;
      });

      // _scaffoldKey.currentState?.showSnackBar(
      //     SnackBar(content: Text("Verification OTP Code $_otpCode Success")));
    });
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
                    Center(
                      child: TextFieldPin(
                          textController: textEditingController,
                          autoFocus: true,
                          codeLength: _otpCodeLength,
                          alignment: MainAxisAlignment.center,
                          defaultBoxSize: 50.0,
                          margin: 5,
                          selectedBoxSize: 50.0,
                          textStyle:
                              TextStyle(fontSize: 16, color: Color(0xff222741)),
                          defaultDecoration: _pinPutDecoration.copyWith(
                              border: Border.all(color: Color(0xffD1D5DB),)),
                          selectedDecoration: _pinPutDecoration,
                          onChange: (code) {
                            _onOtpCallBack(code, false);
                          }),
                    ),
                    Row(
                      children: [
                        Text(
                          "Resend code ",
                          style: TextStyle(
                            color: Color(0xff9CA3AF),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 1,
                          ),
                        ),
                        Text(
                          "42s",
                          style: TextStyle(
                            color: Color(0xff3366FF),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 400.h,
                    ),
                    Center(
                      child: Container(
                        height: 48,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xff3366FF),
                        ),
                        child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            onPressed: _enableButton ? _onSubmitOtp : null,
                            child: _setUpButtonChild(),
                            disabledTextColor: Color(0xff6B7280),
                            color: Color(0xff3366FF),
                            disabledColor: Color(0xffD1D5DB)),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      child: TextButton(
                        onPressed: _onClickRetry,
                        child: Text(
                          "Retry",
                          style: TextStyle(
                            color: Color(0xff3366FF),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            wordSpacing: 1,
                          ),
                        ),
                      ),
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

  Widget _setUpButtonChild() {
    if (_isLoadingButton) {
      return Container(
        width: 19,
        height: 19,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    } else {
      return Text(
        "Verify",
        style: TextStyle(color: Colors.white),
      );
    }
  }
}
