import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/signUp/view.dart';
import '../core/design/customizedButtom/view.dart';
import 'checkEmail/view.dart';
import 'cubit.dart';

class ForgetPasswordView extends StatelessWidget {
   ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPassCubit cubit = BlocProvider.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset("assets/icons/arrow-left.svg",
                          fit: BoxFit.scaleDown),
                    ),
                    Image.asset(
                      "assets/images/Jobsque.png",
                      fit: BoxFit.scaleDown,
                      height: 19,
                      width: 81,
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Enter the email address you used when you\njoined and we’ll send you instructions to reset\nyour password.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6B7280),
                  ),
                ),
                SizedBox(height: 40.h),
                BlocBuilder(
                    bloc: cubit,
                    builder: (context, state) {
                    return Form(
                      key: cubit.formmKey,
                      child: Container(
                        height: 80.h,
                        width: 325.w,
                        child: TextFormField(
                          controller: cubit.controller1,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                              color: Color(0xff9CA3AF),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: SvgPicture.asset("assets/icons/sms.svg",
                                fit: BoxFit.scaleDown),
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD1D5DB),width: 3,style: BorderStyle.solid),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF472B)),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF472B),width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                              BorderSide(color: Color(0xffD1D5DB), width: 2),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please confirm your Email';
                            }
                            return null;
                          },
                        ),
                      ),
                    );
                  }
                ),
                SizedBox(height: 315.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You remember your password",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff9CA3AF),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, SignUpView());
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3366FF),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                BlocBuilder(
                    bloc: cubit,
                    builder: (context, state){
                    return cubit.isLoading
                        ? Center(
                      child: CircularProgressIndicator(),
                    )
                        : CustomizeButton(
                      text: "Request password reset",
                      color: Color(0xff3366FF),
                      color1: Color(0xffFFFFFF),
                      size: 16,
                      OnClick: () {
                        if (cubit.formmKey.currentState!.validate()) {
                          // Passwords are valid and match
                          // Perform further actions like saving the password
                          cubit.login(context);
                          navigateTo(context, CheckEmailView());
                        }
                      },
                    );
                  }
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
