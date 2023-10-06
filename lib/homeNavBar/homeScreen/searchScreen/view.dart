import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/design/customizedButtom/view.dart';
import '../../../core/design/view.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../jobDetail/view.dart';

class SearchScreenView extends StatefulWidget {
  const SearchScreenView({Key? key}) : super(key: key);

  @override
  State<SearchScreenView> createState() => _SearchScreenViewState();
}

class _SearchScreenViewState extends State<SearchScreenView> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "id": "Senior UI Designer",
      "name": "Twitter • Jakarta, Indonesia ",
      "age": "twitter"
    },
    {
      "id": "Senior UX Designer",
      "name": "Discord • Jakarta, Indonesia ",
      "age": "discord"
    },
    {
      "id": "Junior UI Designer",
      "name": "Invision • Jakarta, Indonesia ",
      "age": "invision"
    },
    {
      "id": "UI/UX Designer",
      "name": "Twitter • Jakarta, Indonesia ",
      "age": "twitter"
    },
    {
      "id": "UI/UX Designer",
      "name": "Spectrum • Jakarta, Indonesia ",
      "age": "spectrum"
    },
    {
      "id": "Senior UI Designer",
      "name": "VK • Yogyakarta, Indonesia ",
      "age": "vk"
    },
    {
      "id": "Junior UI Designer",
      "name": "Behance • Surakarta, Indonesia ",
      "age": "be"
    },
  ];

  int onTapping = 0;
  final foormkey = GlobalKey<FormState>();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  List<String> dropdownItems = [
    '\$5K - \$10K',
    '\$10K - \$15K',
    '\$15K - \$20K'
  ];
  String? selectedDropdownItem;

  bool isSelected = false;
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];

  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["id"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(
                        "assets/icons/arrow-left.svg",
                        fit: BoxFit.scaleDown,
                      )),
                  Container(
                    width: 291.w,
                    height: 50.h,
                    child: TextField(
                      controller: _controller,
                      onChanged: (value) => _runFilter(value),
                      decoration: InputDecoration(
                        labelText: "Search....",
                        labelStyle: TextStyle(
                            color: Color(0xff9CA3AF),
                            wordSpacing: 0.5,
                            fontSize: 14),
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                        prefixIcon: SvgPicture.asset("assets/icons/search.svg",
                            fit: BoxFit.scaleDown),
                        suffixIcon: IconButton(
                          onPressed: () {
                            _controller.clear();
                          },
                          icon: SvgPicture.asset(
                            "assets/icons/close-circle.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        hintText: "Type something...",
                        hintStyle:
                        TextStyle(color: Color(0xff9CA3AF), fontSize: 14),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.r),
                          borderSide:
                          BorderSide(color: Color(0xffD1D5DB), width: 3),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.r),
                          borderSide: BorderSide(color: Color(0xffFF472B)),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.r),
                          borderSide:
                          BorderSide(color: Color(0xffFF472B), width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.r),
                          borderSide: BorderSide(color: Color(0xffD1D5DB)),
                          gapPadding: 5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Color(0xffFFFFFF),
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: (context) =>
                            SizedBox(
                              height: 758.h,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, top: 40, right: 24),
                                child: Form(
                                  key: foormkey,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                          Text(
                                            'Set Filter',
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              color: Color(0xff111827),
                                              fontWeight: FontWeight.w500,
                                              wordSpacing: 1,
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'Reset',
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Color(0xff3366FF),
                                                fontWeight: FontWeight.w500,
                                                wordSpacing: 1,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 28.w),
                                      Text(
                                        'Job Tittle',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Color(0xff111827),
                                          fontWeight: FontWeight.w500,
                                          wordSpacing: 1,
                                        ),
                                      ),
                                      SizedBox(height: 10.w),
                                      Container(
                                        height: 80.h,
                                        width: 330.w,
                                        child: TextFormField(
                                          controller: controller1,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            labelText: "Job Title...",
                                            labelStyle: TextStyle(
                                              color: Color(0xff9CA3AF),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            prefixIcon: SvgPicture.asset(
                                              "assets/icons/briefcase.svg",
                                              fit: BoxFit.scaleDown,
                                              color: Color(0xff111827),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xffFFFFFF),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffD1D5DB),
                                                  width: 3),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffFF472B)),
                                            ),
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffFF472B),
                                                  width: 2),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Color(0xffD1D5DB)),
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter your job title';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Text(
                                        'Location',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Color(0xff111827),
                                          fontWeight: FontWeight.w500,
                                          wordSpacing: 1,
                                        ),
                                      ),
                                      SizedBox(height: 10.w),
                                      Container(
                                        height: 80.h,
                                        width: 330.w,
                                        child: TextFormField(
                                          controller: controller2,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            labelText: "Location...",
                                            labelStyle: TextStyle(
                                              color: Color(0xff9CA3AF),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            prefixIcon: SvgPicture.asset(
                                              "assets/icons/location.svg",
                                              fit: BoxFit.scaleDown,
                                            ),
                                            filled: true,
                                            fillColor: Color(0xffFFFFFF),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffD1D5DB),
                                                  width: 3),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffFF472B)),
                                            ),
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffFF472B),
                                                  width: 2),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Color(0xffD1D5DB)),
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter your location';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Text(
                                        'Salary',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Color(0xff111827),
                                          fontWeight: FontWeight.w500,
                                          wordSpacing: 1,
                                        ),
                                      ),
                                      SizedBox(height: 10.w),
                                      Container(
                                        height: 80.h,
                                        width: 330.w,
                                        child: TextFormField(
                                          controller: controller2,
                                          decoration: InputDecoration(
                                            suffixIcon: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12),
                                              child:
                                              DropdownButtonFormField<String>(
                                                icon: SvgPicture.asset(
                                                    "assets/icons/arrow-down.svg",
                                                    fit: BoxFit.scaleDown,
                                                    color: Colors.black),
                                                value: selectedDropdownItem,
                                                items: dropdownItems
                                                    .map((String item) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: item,
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsets.only(
                                                          left: 48),
                                                      child: Text(item,
                                                        style: TextStyle(
                                                            color:
                                                            Color(0xff111827),
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight.w500),),
                                                    ),
                                                  );
                                                }).toList(),
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    selectedDropdownItem =
                                                    newValue!;
                                                  });
                                                },
                                                decoration: InputDecoration(
                                                  enabledBorder: InputBorder
                                                      .none,
                                                  focusedBorder: InputBorder
                                                      .none,
                                                ),
                                              ),
                                            ),
                                            prefixIcon: SvgPicture.asset(
                                              "assets/icons/dollar-circle.svg",
                                              fit: BoxFit.scaleDown,
                                            ),
                                            filled: true,
                                            fillColor: Color(0xffFFFFFF),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffD1D5DB),
                                                  width: 3),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffFF472B)),
                                            ),
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffFF472B),
                                                  width: 2),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Color(0xffD1D5DB)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Job Type',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Color(0xff111827),
                                          fontWeight: FontWeight.w500,
                                          wordSpacing: 1,
                                        ),
                                      ),
                                      SizedBox(height: 12.w),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              isSelected = !isSelected;
                                              setState(() {});
                                            },
                                            child: Container(
                                              height: 35,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(24.r),
                                                  color: isSelected
                                                      ? Color(0xffD6E4FF)
                                                      : Color(0xffFAFAFA),
                                                  border: Border.all(
                                                      color: isSelected
                                                          ? Color(0xff3366FF)
                                                          : Color(0xffD1D5DB))),
                                              child: Center(
                                                child: Text(
                                                  "Full Time",
                                                  style: TextStyle(
                                                    color: isSelected
                                                        ? Color(0xff3366FF)
                                                        : Color(0xff6B7280),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    wordSpacing: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 12.w),
                                          GestureDetector(
                                            onTap: () {
                                              isSelected1 = !isSelected1;
                                              setState(() {});
                                            },
                                            child: Container(
                                              height: 35,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(24.r),
                                                  color: isSelected1
                                                      ? Color(0xffD6E4FF)
                                                      : Color(0xffFAFAFA),
                                                  border: Border.all(
                                                      color: isSelected1
                                                          ? Color(0xff3366FF)
                                                          : Color(0xffD1D5DB))),
                                              child: Center(
                                                child: Text(
                                                  "Remote",
                                                  style: TextStyle(
                                                    color: isSelected1
                                                        ? Color(0xff3366FF)
                                                        : Color(0xff6B7280),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    wordSpacing: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 12.w),
                                          GestureDetector(
                                            onTap: () {
                                              isSelected2 = !isSelected2;
                                              setState(() {});
                                            },
                                            child: Container(
                                              height: 35,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(24.r),
                                                  color: isSelected2
                                                      ? Color(0xffD6E4FF)
                                                      : Color(0xffFAFAFA),
                                                  border: Border.all(
                                                      color: isSelected2
                                                          ? Color(0xff3366FF)
                                                          : Color(0xffD1D5DB))),
                                              child: Center(
                                                child: Text(
                                                  "Contract",
                                                  style: TextStyle(
                                                    color: isSelected2
                                                        ? Color(0xff3366FF)
                                                        : Color(0xff6B7280),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    wordSpacing: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 16.w),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              isSelected3 = !isSelected3;
                                              setState(() {});
                                            },
                                            child: Container(
                                              height: 35,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(24.r),
                                                  color: isSelected3
                                                      ? Color(0xffD6E4FF)
                                                      : Color(0xffFAFAFA),
                                                  border: Border.all(
                                                      color: isSelected3
                                                          ? Color(0xff3366FF)
                                                          : Color(0xffD1D5DB))),
                                              child: Center(
                                                child: Text(
                                                  "Part Time",
                                                  style: TextStyle(
                                                    color: isSelected3
                                                        ? Color(0xff3366FF)
                                                        : Color(0xff6B7280),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    wordSpacing: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 12.w),
                                          GestureDetector(
                                            onTap: () {
                                              isSelected4 = !isSelected4;
                                              setState(() {});
                                            },
                                            child: Container(
                                              height: 35,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(24.r),
                                                  color: isSelected4
                                                      ? Color(0xffD6E4FF)
                                                      : Color(0xffFAFAFA),
                                                  border: Border.all(
                                                      color: isSelected4
                                                          ? Color(0xff3366FF)
                                                          : Color(0xffD1D5DB))),
                                              child: Center(
                                                child: Text(
                                                  "Onsite",
                                                  style: TextStyle(
                                                    color: isSelected4
                                                        ? Color(0xff3366FF)
                                                        : Color(0xff6B7280),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    wordSpacing: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 12.w),
                                          GestureDetector(
                                            onTap: () {
                                              isSelected = !isSelected5;
                                              setState(() {});
                                            },
                                            child: Container(
                                              height: 35,
                                              width: 95,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(24.r),
                                                  color: isSelected5
                                                      ? Color(0xffD6E4FF)
                                                      : Color(0xffFAFAFA),
                                                  border: Border.all(
                                                      color: isSelected5
                                                          ? Color(0xff3366FF)
                                                          : Color(0xffD1D5DB))),
                                              child: Center(
                                                child: Text(
                                                  "Internship",
                                                  style: TextStyle(
                                                    color: isSelected5
                                                        ? Color(0xff3366FF)
                                                        : Color(0xff6B7280),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    wordSpacing: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 120.w),
                                      CustomizeButton(
                                        text: "Show result",
                                        color: Color(0xff3366FF),
                                        color1: Color(0xffFFFFFF),
                                        size: 16,
                                        OnClick: () {
                                          if (foormkey.currentState!
                                              .validate()) {
                                            Navigator.pop(context);
                                            // Passwords are valid and match
                                            // Perform further actions like saving the password
                                            // navigateTo(context, PassResetSuccessview());
                                          }
                                        },
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                      );
                    },
                    icon: SvgPicture.asset(
                      "assets/icons/filter.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                    width: 295.w,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 95.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1000.r),
                            color: Color(0xff091A7A),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 12.w),
                              Text(
                                'Remote',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              IconButton(
                                onPressed: ()   {
                                  showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Color(0xffFFFFFF),
                                    isScrollControlled: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                    ),
                                    builder: (context) =>SizedBox(
                                      height: 250.h,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 22,top: 30,right: 22,bottom: 30),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'On-Site/Remote',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                                color: Color(0xff222741),
                                                fontWeight: FontWeight.w500,
                                                wordSpacing: 1,
                                              ),
                                            ),
                                            SizedBox(height: 30.h),
                                            Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    isSelected = !isSelected;
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    height: 35,
                                                    width: 85,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius
                                                            .circular(24.r),
                                                        color: isSelected
                                                            ? Color(0xffD6E4FF)
                                                            : Color(0xffFAFAFA),
                                                        border: Border.all(
                                                            color: isSelected
                                                                ? Color(0xff3366FF)
                                                                : Color(0xffD1D5DB))),
                                                    child: Center(
                                                      child: Text(
                                                        "Remote",
                                                        style: TextStyle(
                                                          color: isSelected
                                                              ? Color(0xff3366FF)
                                                              : Color(0xff6B7280),
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 12,
                                                          wordSpacing: 1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 8.w),
                                                GestureDetector(
                                                  onTap: () {
                                                    isSelected1 = !isSelected1;
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    height: 35,
                                                    width: 80,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius
                                                            .circular(24.r),
                                                        color: isSelected1
                                                            ? Color(0xffD6E4FF)
                                                            : Color(0xffFAFAFA),
                                                        border: Border.all(
                                                            color: isSelected1
                                                                ? Color(0xff3366FF)
                                                                : Color(0xffD1D5DB))),
                                                    child: Center(
                                                      child: Text(
                                                        "Onsite",
                                                        style: TextStyle(
                                                          color: isSelected1
                                                              ? Color(0xff3366FF)
                                                              : Color(0xff6B7280),
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 12,
                                                          wordSpacing: 1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 8.w),
                                                GestureDetector(
                                                  onTap: () {
                                                    isSelected2 = !isSelected2;
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    height: 35,
                                                    width: 80,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius
                                                            .circular(24.r),
                                                        color: isSelected2
                                                            ? Color(0xffD6E4FF)
                                                            : Color(0xffFAFAFA),
                                                        border: Border.all(
                                                            color: isSelected2
                                                                ? Color(0xff3366FF)
                                                                : Color(0xffD1D5DB))),
                                                    child: Center(
                                                      child: Text(
                                                        "Hybird",
                                                        style: TextStyle(
                                                          color: isSelected2
                                                              ? Color(0xff3366FF)
                                                              : Color(0xff6B7280),
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 12,
                                                          wordSpacing: 1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 8.w),
                                                GestureDetector(
                                                  onTap: () {
                                                    isSelected3 = !isSelected3;
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    height: 35,
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius
                                                            .circular(24.r),
                                                        color: isSelected3
                                                            ? Color(0xffD6E4FF)
                                                            : Color(0xffFAFAFA),
                                                        border: Border.all(
                                                            color: isSelected2
                                                                ? Color(0xff3366FF)
                                                                : Color(0xffD1D5DB))),
                                                    child: Center(
                                                      child: Text(
                                                        "Any",
                                                        style: TextStyle(
                                                          color: isSelected3
                                                              ? Color(0xff3366FF)
                                                              : Color(0xff6B7280),
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 12,
                                                          wordSpacing: 1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 50.h),
                                            CustomizeButton(
                                              text: "Show result",
                                              color: Color(0xff3366FF),
                                              color1: Color(0xffFFFFFF),
                                              size: 16,
                                              OnClick: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),);
                                },
                                icon: SvgPicture.asset(
                                  "assets/icons/arrow-down.svg",
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Container(
                          width: 105.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1000.r),
                            color: Color(0xff091A7A),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 15.w),
                              Text(
                                'Full Time',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "assets/icons/arrow-down.svg",
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Container(
                          width: 105.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1000.r),
                            color: Color(0xffFFFFFF),
                            border: Border.all(
                              color: Color(0xffD1D5DB),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 11.w),
                              Text(
                                'Post date',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xff6B7280),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "assets/icons/arrow-down.svg",
                                  fit: BoxFit.scaleDown,
                                  color: Color(0xff6B7280),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Container(
                          width: 142.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1000.r),
                            color: Color(0xffFFFFFF),
                            border: Border.all(
                              color: Color(0xffD1D5DB),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 15.w),
                              Text(
                                'Experience level',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xff6B7280),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "assets/icons/arrow-down.svg",
                                  fit: BoxFit.scaleDown,
                                  color: Color(0xff6B7280),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 36.h,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Color(0xffE5E7EB),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(width: 24.w),
                    Text(
                      'Featuring 120+ jobs',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff6B7280),
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () {
                    navigateTo(context, JobDetailView());
                  },
                  child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) =>
                          RecentJob(
                            title: _foundUsers[index]["id"],
                            desc: _foundUsers[index]["name"],
                            iconn: _foundUsers[index]["age"],
                            isSelected: onTapping == 0,
                            onTap: () {
                              onTapping = 1;
                              setState(() {});
                            },
                          ),
                      separatorBuilder: (context, index) =>
                          Divider(thickness: 2, color: Color(0xffE5E7EB)),
                      itemCount: _foundUsers.length),
                ),
              )
                  : SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 100.h),
                    Image.asset(
                      "assets/images/noSearch.png",
                      fit: BoxFit.scaleDown,
                      width: 173.w,
                      height: 142.h,
                    ),
                    SizedBox(height: 24.h),
                    Text(
                      'Search not found',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff111827),
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      textAlign: TextAlign.center,
                      'Try searching with different keywords so\nwe can show you',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff6B7280),
                        fontWeight: FontWeight.w400,
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
    );
  }
}
