import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PortfolioProfileView extends StatefulWidget {
  const PortfolioProfileView({Key? key}) : super(key: key);

  @override
  State<PortfolioProfileView> createState() => _PortfolioProfileViewState();
}

class _PortfolioProfileViewState extends State<PortfolioProfileView> {
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
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(24.sp),
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
                    "Portfolio",
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
              Text(
                "Add portfolio here",
                style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  wordSpacing: 1,
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: 330.w,
                height: 265.h,
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
                    SizedBox(height: 20.h),
                    SvgPicture.asset("assets/icons/document-upload.svg",
                        fit: BoxFit.scaleDown),
                    SizedBox(height: 20.h),
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
                    SizedBox(height: 40.h),
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
            ],
          ),
        ),
      ),

    );
  }
}
