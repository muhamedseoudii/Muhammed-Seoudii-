import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/jobDetail/bioData/view.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/design/customizedButtom/view.dart';
import '../core/design/view.dart';
import '../core/logic/helper_methods.dart';

class JobDetailView extends StatefulWidget {
  const JobDetailView({Key? key}) : super(key: key);

  @override
  State<JobDetailView> createState() => _JobDetailViewState();
}

class _JobDetailViewState extends State<JobDetailView>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "can not launch url ";
    }
  }

  void _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'twitter@mail.com',
      queryParameters: {
        'subject': 'Hello',
        'body': 'This is the body of the email.'
      },
    );

    if (await canLaunch(emailUri.toString())) {
      await launch(emailUri.toString());
    } else {
      throw 'Could not launch email.';
    }
  }

  List<PeopleModel> list = [
    PeopleModel(
        userImage: "assets/images/pic1.png",
        userName: "Dimas Adi Saputro",
        job: "Senior UI/UX Designer at Twitter",
        work: "Work during",
        years: "5 Years"),
    PeopleModel(
        userImage: "assets/images/pic2.png",
        userName: "Syahrul Ramadhani",
        job: "Senior UI/UX Designer at Twitter",
        work: "Work during",
        years: "5 Years"),
    PeopleModel(
        userImage: "assets/images/pic3.png",
        userName: "Farrel Daniswara",
        job: "Senior UI/UX Designer at Twitter",
        work: "Work during",
        years: "4 Years"),
    PeopleModel(
        userImage: "assets/images/pic4.png",
        userName: "Azzahra Farrelika",
        job: "UI/UX Designer at Twitter",
        work: "Work during",
        years: "4 Years"),
    PeopleModel(
        userImage: "assets/images/pic5.png",
        userName: "Dimas Adi Saputro",
        job: "Senior UI/UX Designer at Twitter",
        work: "Work during",
        years: "5 Years"),
    PeopleModel(
        userImage: "assets/images/pic3.png",
        userName: "Ferdi Saputra",
        job: "UI/UX Designer at Twitter",
        work: "Work during",
        years: "3 Years"),
  ];

  List<String> dropdownItems = [
    'UI/UX Designer',
    'Senior UI Designer',
    'Junior UI Designer'
  ];
  String? selectedDropdownItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        textAlign: TextAlign.center,
                        "Job Detail",
                        style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/save1.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 34.h),
                  SvgPicture.asset(
                    "assets/icons/twitter.svg",
                    width: 48.w,
                    height: 48.h,
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    textAlign: TextAlign.center,
                    "Senior UI Designer",
                    style: TextStyle(
                      color: Color(0xff111827),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      wordSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    textAlign: TextAlign.center,
                    "Twitter • Jakarta, Indonesia",
                    style: TextStyle(
                      color: Color(0xff374151),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      wordSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.r),
                          color: Color(0xffD6E4FF),
                        ),
                        child: Center(
                          child: Text(
                            "Fulltime",
                            style: TextStyle(
                              color: Color(0xff3366FF),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              wordSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.r),
                          color: Color(0xffD6E4FF),
                        ),
                        child: Center(
                          child: Text(
                            "Onsite",
                            style: TextStyle(
                              color: Color(0xff3366FF),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              wordSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.r),
                          color: Color(0xffD6E4FF),
                        ),
                        child: Center(
                          child: Text(
                            "Senior",
                            style: TextStyle(
                              color: Color(0xff3366FF),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              wordSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32.h),
                  Container(
                    alignment: Alignment.center,
                    height: 50.h,
                    width: 330.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      color: Color(0xffF4F4F5),
                    ),
                    child: Column(
                      children: [
                        TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color: Color(0xff091A7A),
                          ),
                          labelColor: Color(0xffFFFFFF),
                          unselectedLabelColor: Color(0xff6B7280),
                          controller: tabController,
                          tabs: [
                            Tab(text: 'Desicription'),
                            Tab(text: 'Company'),
                            Tab(text: 'People'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Stack(
                    children: [
                      SizedBox(
                        height: 600.h,
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Job Description',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff111827),
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  'Job Your role as the UI Designer is to use interactive components on\nvarious platforms (web, desktop and mobile). This will include\nproducing high-fidelity mock-ups, iconography, UI illustrations/\ngraphics, and other graphic elements. As the UI Designer, you\nwill be supporting the wider design team with the internal\nDesign System, tying together the visual language. You will with\nother UI and UX Designers, Product Managers, and Engineering\nteams in a highly customer-focused agile environment to help\ndefine the vision of the products.',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff4B5563),
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Text(
                                  'Skill Required',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff111827),
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  "• A strong visual portfolio with clear understanding of UI methodologies.\n• Ability to create hi-fidelity mock-ups in Figma.\n• Ability to create various graphics for the web e.g. illustrations and icons.\n• Able to facilitate workshops and liaise with stakeholders.\n• Proficiency in the Adobe Creative Suite.\n• Confident communicator with an analytical mindset.\n• Design library/Design system experience.\n• 4+ years of commercial experience in UI/Visual Design",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff4B5563),
                                    wordSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Contact Us',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff111827),
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: _launchEmail,
                                      child: Container(
                                        width: 160.h,
                                        height: 56.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.r),
                                          color: Color(0xffFFFFFF),
                                          border: Border.all(
                                              color: Color(0xffE5E7EB), width: 2),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12, top: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Email",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff9CA3AF),
                                                  wordSpacing: 1,
                                                ),
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                "twitter@mail.com",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff111827),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 13.w),
                                    GestureDetector(
                                      onTap: () {
                                        _launchURL("www.twitter .com");
                                      },
                                      child: Container(
                                        width: 160.h,
                                        height: 56.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.r),
                                          color: Color(0xffFFFFFF),
                                          border: Border.all(
                                              color: Color(0xffE5E7EB), width: 2),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12, top: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Website",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff9CA3AF),
                                                  wordSpacing: 1,
                                                ),
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                "https://twitter.com",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff111827),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 24.h),
                                Text(
                                  'About Company',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff111827),
                                    wordSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                Text(
                                  "Understanding Recruitment is an award-winning technology,\nsoftware and digital recruitment consultancy with headquarters\nin St. Albans, Hertfordshire.We also have a US office in Boston,\nMassachusetts specialising in working closely with highly skilled\nindividuals seeking their next career move within Next Gen Tech,\nBackend Engineering, and Artificial Intelligence.We recently\ncelebrated our first decade in business and over the years have\nbeen recognised with several industry awards including 'Best\nStaffing Firm to Work For 2018'​ at the SIA Awards for the third\nconsecutive year and ‘Business of the Year 2017’ at the SME\nHertfordshire Business Awards.Our teams of specialists operate\nacross all areas of Technology and Digital, including Java,\nJavaScript, Python, .Net, DevOps & SRE, SDET, Artificial Intelligence,\nMachine Learning, AI, Digital, Quantum Computing, Hardware\nAcceleration,Digital, Charity, Fintech, and the Public Sector.",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff4B5563),
                                    wordSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 60.h,
                                          width: 100.w,
                                          color: Color(0xffFFFFFF),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "6 Employees For",
                                                style: TextStyle(
                                                  color: Color(0xff111827),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  wordSpacing: 1,
                                                ),
                                              ),
                                              SizedBox(height: 4.h),
                                              Text(
                                                "UI/UX Design",
                                                style: TextStyle(
                                                  color: Color(0xff6B7280),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  wordSpacing: 1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 91.w),
                                        Container(
                                          height: 48.h,
                                          width: 140.w,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              suffixIcon: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 12),
                                                child: DropdownButtonFormField<String>(
                                                  icon: SvgPicture.asset(
                                                      "assets/icons/arrow-down.svg",
                                                      fit: BoxFit.scaleDown,
                                                      color: Colors.black),
                                                  value: selectedDropdownItem,
                                                  items:
                                                      dropdownItems.map((String item) {
                                                    return DropdownMenuItem<String>(
                                                      value: item,
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(
                                                            left: 15),
                                                        child: Text(
                                                          item,
                                                          style: TextStyle(
                                                              color: Color(0xff111827),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight.w400),
                                                        ),
                                                      ),
                                                    );
                                                  }).toList(),
                                                  onChanged: (String? newValue) {
                                                    setState(() {
                                                      selectedDropdownItem = newValue!;
                                                    });
                                                  },
                                                  decoration: InputDecoration(
                                                    enabledBorder: InputBorder.none,
                                                    focusedBorder: InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              filled: true,
                                              fillColor: Color(0xffFFFFFF),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xffD1D5DB), width: 2.w),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(100.r),
                                                borderSide: BorderSide(
                                                    color: Color(0xffD1D5DB)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 400.h,
                                  child: ListView.separated(
                                      itemBuilder: (context, index) => ListTile(
                                            leading: Image.asset(
                                                list[index].userImage,
                                                fit: BoxFit.scaleDown),
                                            title: Text(
                                              list[index].userName,
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xff111827),
                                                fontWeight: FontWeight.w500,
                                                wordSpacing: 1,
                                              ),
                                            ),
                                            subtitle: Text(
                                              list[index].job,
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff6B7280),
                                                fontWeight: FontWeight.w400,
                                                wordSpacing: 1,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            trailing:Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  list[index].work,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff6B7280),
                                                    fontWeight: FontWeight.w400,
                                                    wordSpacing: 1,
                                                  ),
                                                ),
                                                SizedBox(height: 2.h),
                                                Text(
                                                  textAlign: TextAlign.right,
                                                  list[index].years,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff3366FF),
                                                    fontWeight: FontWeight.w400,
                                                    wordSpacing: 1,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ),
                                      separatorBuilder: (context, index) => Divider(
                                            color: Color(0xffE5E7EB),
                                            thickness: 1,
                                          ),
                                      itemCount: list.length),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 350.sp),
                        child: CustomizeButton(
                          text: "Apply now",
                          color: Color(0xff3366FF),
                          color1: Color(0xffFFFFFF),
                          size: 16,
                          OnClick: () {
                            navigateTo(context, BioDataView());
                          },
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
