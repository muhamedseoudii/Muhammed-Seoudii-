import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/design/view.dart';

class SavedPageView extends StatefulWidget {
  const SavedPageView({Key? key}) : super(key: key);

  @override
  State<SavedPageView> createState() => _SavedPageViewState();
}

class _SavedPageViewState extends State<SavedPageView> {

  final List savedJobs = [
    ["Senior UI Designer", "Twitter • Jakarta, Indonesia", "twitter"],
    ["UI Designer", "Spectrum • Jakarta, Indonesia", "SpectrumLogo"],
    ["Senior UI Designer", "VK • Yogyakarta, Indonesia", "VKLogo"],
    ["Senior UX Designer", "Discord • Jakarta, Indonesia ", "discord"],
    ["Junior UI Designer", "Invision • Jakarta, Indonesia", "invision"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
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
                  SizedBox(width: 100.w),
                  Text(
                    textAlign: TextAlign.center,
                    "Saved",
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
            Container(
              height: 36.h,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffE5E7EB),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 24.w),
                  Text(
                    '12 Job Saved',
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
            SizedBox(
              height: 598.h,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return SavedJop(
                        title: savedJobs[index][0],
                        desc: savedJobs[index][1],
                        iconn: savedJobs[index][2],
                        isSelected: true,
                      );
                    },
                    separatorBuilder: (context, index) =>
                        Divider(thickness: 1, color: Color(0xffE5E7EB)),
                    itemCount: savedJobs.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
