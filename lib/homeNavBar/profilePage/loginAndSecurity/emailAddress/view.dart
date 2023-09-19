import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EmailAddressView extends StatefulWidget {
  const EmailAddressView({Key? key}) : super(key: key);

  @override
  State<EmailAddressView> createState() => _EmailAddressViewState();
}

class _EmailAddressViewState extends State<EmailAddressView> {

  final formmKey = GlobalKey<FormState>();
  final controller1 = TextEditingController();

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
                    SizedBox(width: 55.w),
                    Text(
                      textAlign: TextAlign.center,
                      "Login and security",
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
              SizedBox(height: 44.h),
             Padding(
               padding:  EdgeInsets.only(left: 24.sp,right: 24.sp),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     "Main e-mail address",
                     style: TextStyle(
                       color: Color(0xff111827),
                       fontSize: 16.sp,
                       fontWeight: FontWeight.w400,
                       wordSpacing: 1,
                     ),
                   ),
                   SizedBox(height: 8.h),
                   Form(
                     key: formmKey,
                     child: Container(
                       height: 80.h,
                       width: 325.w,
                       child: TextFormField(
                         controller: controller1,
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
                             return 'Please Enter your Email';
                           }
                           return null;
                         },
                       ),
                     ),
                   ),
                   SizedBox(height: 498.h),
                   Center(
                     child: Container(
                       height: 48,
                       width: 350,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(25),
                         color: Color(0xff3366FF),
                       ),
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           elevation: 0,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(25),
                           ),
                         ),
                         onPressed: () {
                           if (formmKey.currentState!.validate()) {
                             // Passwords are valid and match
                             // Perform further actions like saving the password
                             // navigateTo(context, CheckEmailView());
                           }
                         },
                         child: Text(
                           "Save",
                           style: TextStyle(
                             color: Color(0xffFFFFFF),
                             fontSize: 16,
                             fontWeight: FontWeight.w500,
                           ),
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
}
