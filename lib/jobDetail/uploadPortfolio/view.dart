import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/jobDetail/uploadPortfolio/successPortfolio/view.dart';

import '../../core/logic/helper_methods.dart';

class UploadPortfolioView extends StatefulWidget {
  const UploadPortfolioView({Key? key}) : super(key: key);

  @override
  State<UploadPortfolioView> createState() => _UploadPortfolioViewState();
}

class _UploadPortfolioViewState extends State<UploadPortfolioView> {
  File? selectedFile;

  Future<void> pickAndUploadFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (result != null) {
      setState(() {
        selectedFile = File(result.files.single.path!);
      });
      await uploadFile(selectedFile!);
    } else {
      // User canceled the file picker
    }
  }

  Future<void> uploadFile(File file) async {
    String url = 'YOUR_UPLOAD_URL';
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(await http.MultipartFile.fromPath('pdf', file.path));
    var response = await request.send();
    if (response.statusCode == 200) {
      print('File uploaded successfully');
      // Do something with the response, if needed
    } else {
      print('File upload failed');
      // Handle the upload failure
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
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
                      "Apply Job",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 34.h),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/right-circle.svg",
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(height: 8.w),
                          Text(
                            textAlign: TextAlign.center,
                            "Biodata",
                            style: TextStyle(
                              color: Color(0xff3366FF),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        "assets/icons/Line.svg",
                        fit: BoxFit.scaleDown,
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/right-circle.svg",
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(height: 8.w),
                          Text(
                            textAlign: TextAlign.center,
                            "Type of work",
                            style: TextStyle(
                              color: Color(0xff111827),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        "assets/icons/Line.svg",
                        fit: BoxFit.scaleDown,
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/circle3.svg",
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(height: 8.w),
                          Text(
                            textAlign: TextAlign.center,
                            "Upload portfolio",
                            style: TextStyle(
                              color: Color(0xff3366FF),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Upload portfolio",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "Fill in your bio data correctly",
                      style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      "Upload CV",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Container(
                      width: 330.w,
                      height: 74.h,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffD1D5DB),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFFFFF),
                      ),
                      child: selectedFile != null
                          ? Text(
                              selectedFile!.path,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color(0xff111827),
                                  fontWeight: FontWeight.w500),
                            )
                          : Text(
                              "No file selected",
                              style: TextStyle(fontSize: 14.sp,
                                  color: Color(0xff111827),
                                  fontWeight: FontWeight.w500),
                            ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Other File",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Container(
                      width: 330.w,
                      height: 225.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffECF2FF),
                        border: Border.all(
                            color: Color(0xff6690FF),
                            strokeAlign: BorderSide.strokeAlignInside),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 16.h),
                          SvgPicture.asset("assets/icons/document-upload.svg",
                              fit: BoxFit.scaleDown),
                          SizedBox(height: 16.h),
                          Text(
                            "Upload your other file",
                            style: TextStyle(
                              color: Color(0xff111827),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Max. file size 10 MB",
                            style: TextStyle(
                              color: Color(0xff6B7280),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 24.h),
                            Container(
                              width: 295.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color(0xffECF2FF),
                                  border: Border.all(
                                      color: Color(0xff3366FF), width: 1)),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                onPressed: pickAndUploadFile,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/export.svg",
                                      fit: BoxFit.scaleDown,
                                      color: Color(0xffD6E4FF),
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      "Add file",
                                      style: TextStyle(
                                        color: Color(0xffD6E4FF),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        wordSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50.h),
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
                             navigateTo(context, SuccessPortfolioView());
                          },
                          child: Text(
                            "Next",
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
