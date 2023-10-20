import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/forgetPass/passResetSuccess/view.dart';
import 'package:jobsque/forgetPass/view.dart';

import '../../core/design/customizedButtom/view.dart';
import 'cubit.dart';

class PasswordScreen extends StatelessWidget {
  PasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CreatePassCubit cubit = BlocProvider.of(context);
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
                        navigateTo(context, ForgetPasswordView());
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
                  "Create new password",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Set your new password so you can login and\nacces Jobsque",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6B7280),
                  ),
                ),
                SizedBox(height: 30.h),
                BlocBuilder(
                    bloc: cubit,
                    builder: (context, state) {
                    return Form(
                      key: cubit.formKey,
                      child: Column(
                        children: [
                          Container(
                            width: 360,
                            height: 80,
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              controller: cubit.passwordController,
                              decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(
                                  color: Color(0xff9CA3AF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                filled: true,
                                fillColor: Color(0xffFFFFFF),
                                prefixIcon: SvgPicture.asset("assets/icons/lock.svg",
                                    fit: BoxFit.scaleDown),
                                suffixIcon: IconButton(
                                  icon: Icon(cubit.obscureT
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined),
                                  onPressed: cubit.toggleDesign,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xffD1D5DB),width: 3),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xffFF472B)),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xffFF472B),width: 2),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  borderSide:
                                      BorderSide(color: Color(0xffD1D5DB), width: 2),
                                ),
                              ),
                              obscureText: !(cubit.obscureT && true),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter a password';
                                } else if (value.length < 8) {
                                  return 'Password must be at least 8 characters';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            width: 360,
                            height: 80,
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              controller: cubit.confirmPasswordController,
                              decoration: InputDecoration(
                                labelText: "Confirm Password",
                                labelStyle: TextStyle(
                                  color: Color(0xff9CA3AF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                filled: true,
                                fillColor: Color(0xffFFFFFF),
                                prefixIcon: SvgPicture.asset("assets/icons/lock.svg",
                                    fit: BoxFit.scaleDown),
                                suffixIcon: IconButton(
                                  icon: Icon(cubit.obscureT2
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined),
                                  onPressed: cubit.toggleDesign1,
                                ),
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
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  borderSide:
                                      BorderSide(color: Color(0xffD1D5DB), width: 2),
                                ),
                              ),
                              obscureText:!(cubit.obscureT2 && true),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please confirm your password';
                                } else if (value != cubit.passwordController.text) {
                                  return 'Both password must match';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(height: 315.h),
                          CustomizeButton(
                            text: "Reset password",
                            color: Color(0xff3366FF),
                            color1: Color(0xffFFFFFF),
                            size: 16,
                            OnClick: () {
                              if (cubit.formKey.currentState!.validate()) {
                                // Passwords are valid and match
                                // Perform further actions like saving the password
                                navigateTo(context, PassResetSuccessview());
                              }
                            },
                          ),

                        ],
                      ),
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
