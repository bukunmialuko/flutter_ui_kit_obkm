import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../navigation/navigation_service.dart';
import 'circle_tab_indicator.dart';

class Page32 extends StatefulWidget {
  const Page32({Key? key}) : super(key: key);

  @override
  State<Page32> createState() => _Page32State();
}

class _Page32State extends State<Page32> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  static List<Tab> myTabs = <Tab>[
    Tab(
      text: "PHOTOS",
    ),
    Tab(
      text: 'PHOTOS',
    ),
    Tab(
      text: 'POSTS',
    ),
    Tab(
      text: 'FRIENDS',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      GetIt.I.get<NavigationService>().back();
                    },
                    child: SvgPicture.asset(
                      "assets/svg/32/arrow_back.svg",
                      width: 24.w,
                      height: 24.w,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      GetIt.I.get<NavigationService>().back();
                    },
                    child: SvgPicture.asset(
                      "assets/svg/32/settings.svg",
                      width: 24.w,
                      height: 24.w,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 43.h,
              ),
              Container(
                width: 150.w,
                height: 150.w,
                decoration: BoxDecoration(
                  color: Color(0xffC4C4C4),
                  borderRadius: BorderRadius.circular(150.w),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "John Doe",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 24.sp,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Designer",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 58.h,
              ),
              TabBar(
                  indicator: CircleTabIndicator(color: Colors.black, radius: 3),
                  labelColor: Colors.black,
                  labelStyle: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  unselectedLabelColor: Color(0xffA8A8A8),
                  unselectedLabelStyle: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xffA8A8A8),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  controller: _tabController,
                  tabs: myTabs.map((e) => e).toList()),
              SizedBox(
                height: 48.h,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: 30,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8.h,
                        crossAxisSpacing: 6.w,
                      ),
                      itemBuilder: (c, i) {
                        return Container(
                          height: 110.h,
                          color: Color(0xffC4C4C4),
                        );
                      },
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: 30,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8.h,
                        crossAxisSpacing: 6.w,
                      ),
                      itemBuilder: (c, i) {
                        return Container(
                          height: 110.h,
                          color: Color(0xffC4C4C4),
                        );
                      },
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: 30,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8.h,
                        crossAxisSpacing: 6.w,
                      ),
                      itemBuilder: (c, i) {
                        return Container(
                          height: 110.h,
                          color: Color(0xffC4C4C4),
                        );
                      },
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: 30,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8.h,
                        crossAxisSpacing: 6.w,
                      ),
                      itemBuilder: (c, i) {
                        return Container(
                          height: 110.h,
                          color: Color(0xffC4C4C4),
                        );
                      },
                    )
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

/// Nice read
/// https://medium.com/swlh/flutter-custom-tab-indicator-for-tabbar-d72bbc6c9d0c
/// https://medium.com/flutter-community/flutter-custom-decoration-eba31253be0b
