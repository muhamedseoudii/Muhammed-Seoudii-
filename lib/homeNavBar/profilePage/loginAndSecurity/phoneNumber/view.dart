import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberView extends StatefulWidget {
  const PhoneNumberView({Key? key}) : super(key: key);

  @override
  State<PhoneNumberView> createState() => _PhoneNumberViewState();
}

class _PhoneNumberViewState extends State<PhoneNumberView> {

  FocusNode focusNode = FocusNode();
  bool isToggle = true;

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
                    SizedBox(width: 60.w),
                    Text(
                      textAlign: TextAlign.center,
                      "Phone number",
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
                   Container(
                     height: 70.h,
                     width: 327.w,
                     child: IntlPhoneField(
                       focusNode: focusNode,
                       dropdownIconPosition: IconPosition.trailing,
                       keyboardType: TextInputType.number,
                       decoration: InputDecoration(
                         labelText: 'Phone Number',
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                           borderSide: BorderSide(
                               color: Color(0xffD1D5DB), width: 2),
                         ),
                       ),
                       languageCode: "en",
                       onChanged: (phone) {
                         print(phone.completeNumber);
                       },
                       onCountryChanged: (country) {
                         print('Country changed to: ' + country.name);
                       },
                     ),
                   ),
                   Container(
                     width: 330.w,
                     height: 60.h,
                     color: Color(0xffFFFFFF),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           'Use the phone number to reset your\npassword',
                           style: TextStyle(
                             fontSize: 14.sp,
                             color: Color(0xff6B7280),
                             fontWeight: FontWeight.w400,
                             wordSpacing: 1,
                           ),
                         ),
                         GestureDetector(
                           onTap: () {
                             isToggle = !isToggle;
                             setState(() {});
                           },
                           child: isToggle
                               ? SvgPicture.asset(
                             "assets/icons/ToggleOn.svg",
                             fit: BoxFit.scaleDown,
                           )
                               : SvgPicture.asset(
                             "assets/icons/ToggleOff.svg",
                             fit: BoxFit.scaleDown,
                           ),
                         )
                       ],
                     ),
                   ),
                   SizedBox(height: 447.h),
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
