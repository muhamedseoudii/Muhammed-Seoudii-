import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final foormkey = GlobalKey<FormState>();
  FocusNode focusNode = FocusNode();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  File? image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    final pickedImage2 = await picker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(21.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                    SizedBox(width: 80.w),
                    Text(
                      textAlign: TextAlign.center,
                      "Edit Profile",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 36.h),
                Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/Profile1.png",
                        fit: BoxFit.scaleDown,
                        height: 90.h,
                        width: 90.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(28.sp),
                      child: Center(
                        child: GestureDetector(
                          onTap: _pickImage,
                          child: SvgPicture.asset("assets/icons/camera.svg",
                              fit: BoxFit.scaleDown),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Center(
                  child: GestureDetector(
                    onTap: _pickImage,
                    child: Text(
                      "Change Photo",
                      style: TextStyle(
                        color: Color(0xff3366FF),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                Form(
                  key: foormkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                          color: Color(0xff9CA3AF),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        height: 70.h,
                        width: 325.w,
                        child: TextFormField(
                          controller: controller1,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffD1D5DB), width: 3.w),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF472B)),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffFF472B), width: 2.w),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.sp),
                              borderSide: BorderSide(color: Color(0xffD1D5DB)),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Username';
                            }
                            return null;
                          },
                        ),
                      ),
                      Text(
                        "Bio",
                        style: TextStyle(
                          color: Color(0xff9CA3AF),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        height: 70.h,
                        width: 325.w,
                        child: TextFormField(
                          controller: controller2,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffD1D5DB), width: 3.w),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF472B)),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffFF472B), width: 2.w),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.sp),
                              borderSide: BorderSide(color: Color(0xffD1D5DB)),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Username';
                            }
                            return null;
                          },
                        ),
                      ),
                      Text(
                        "Address",
                        style: TextStyle(
                          color: Color(0xff9CA3AF),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        height: 70.h,
                        width: 325.w,
                        child: TextFormField(
                          controller: controller3,
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffD1D5DB), width: 3.w),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF472B)),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffFF472B), width: 2.w),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.sp),
                              borderSide: BorderSide(color: Color(0xffD1D5DB)),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Username';
                            }
                            return null;
                          },
                        ),
                      ),
                      Text(
                        "No.Handphone",
                        style: TextStyle(
                          color: Color(0xff9CA3AF),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        height: 70.h,
                        width: 327.w,
                        child: IntlPhoneField(
                          focusNode: focusNode,
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
                      SizedBox(height: 70.h),
                      Center(
                        child: Container(
                          height: 50,
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
                              if (foormkey.currentState!.validate()) {
                                // Passwords are valid and match
                                // Perform further actions like saving the password
                                // navigateTo(context, TypeOfWorkView());
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
