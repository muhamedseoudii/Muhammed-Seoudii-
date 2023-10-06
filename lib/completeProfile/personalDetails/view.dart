import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../core/design/customizedButtom/view.dart';
import '../../core/design/view.dart';

class PersonalDetailsView extends StatefulWidget {
  const PersonalDetailsView({Key? key}) : super(key: key);

  @override
  State<PersonalDetailsView> createState() => _PersonalDetailsViewState();
}

class _PersonalDetailsViewState extends State<PersonalDetailsView> {
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
                    SizedBox(width: 55.w),
                    Text(
                      textAlign: TextAlign.center,
                      "Personal Details",
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
                      TextFieldApp(
                        Controller: controller1,
                        sizeH: 60,
                        sizeW: 330,
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
                      TextFieldApp(
                        Controller: controller2,
                        sizeH: 60,
                        sizeW: 330,
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
                      TextFieldApp(
                        Controller: controller3,
                        sizeH: 60,
                        sizeW: 330,
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
                        width: 330.w,
                        child: IntlPhoneField(
                          dropdownIconPosition: IconPosition.trailing,
                          keyboardType: TextInputType.number,
                          focusNode: focusNode,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                  color: Color(0xffD1D5DB), width: 1.w),
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
                      CustomizeButton(
                        text: "Save",
                        color: Color(0xff3366FF),
                        color1: Color(0xffFFFFFF),
                        size: 16,
                        OnClick: () {
                          if (foormkey.currentState!.validate()) {
                            // Passwords are valid and match
                            // Perform further actions like saving the password
                            // navigateTo(context, TypeOfWorkView());
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("You have changed your Personal Details"),
                                duration: Duration(seconds: 5), ),
                            );
                          }
                        },
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
