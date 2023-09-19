import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LanguageView extends StatefulWidget {
  const LanguageView({Key? key}) : super(key: key);

  @override
  State<LanguageView> createState() => _LanguageViewState();
}

class _LanguageViewState extends State<LanguageView> {
  String? _selectedLanguage;
  final List<Map<String, dynamic>> languages = [
    {'name': 'English', 'flag': "assets/images/flag1.png"},
    {'name': 'Indonesia', 'flag': "assets/images/flag2.png"},
    {'name': 'Arabic', 'flag': "assets/images/flag3.png"},
    {'name': 'Chinese', 'flag': "assets/images/flag4.png"},
    {'name': 'Dutch', 'flag': "assets/images/flag5.png"},
    {'name': 'French', 'flag': "assets/images/flag6.png"},
    {'name': 'German', 'flag': "assets/images/flag7.png"},
    {'name': 'Japanese', 'flag': "assets/images/flag8.png"},
    {'name': 'Korean', 'flag': "assets/images/flag9.png"},
    {'name': 'Portuguese', 'flag': "assets/images/flag10.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.sp),
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
                    "Language",
                    style: TextStyle(
                      color: Color(0xff111827),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      wordSpacing: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28.h),
              SizedBox(
                height: 655.h,
                child: ListView.separated(
                  itemCount: languages.length,
                  separatorBuilder: (context, index) => Divider(
                    thickness: 1.sp,
                    color: Color(0xffD1D5DB),
                  ),
                  itemBuilder: (context, index) {
                    final language = languages[index];
                    return ListTile(
                      leading: Image.asset(
                        language['flag'],
                        fit: BoxFit.scaleDown,
                        height: 20.h,
                        width: 30.w,
                      ),
                      title: Text(
                        language['name'],
                        style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1,
                        ),
                      ),
                      trailing: Radio(
                        value: language['name'],
                        groupValue: _selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            _selectedLanguage = value;
                          });
                        },
                      ),
                      onTap: () {
                        setState(() {
                          _selectedLanguage = language['name'];
                        });
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
