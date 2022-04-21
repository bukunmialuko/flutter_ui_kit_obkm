import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../navigation/navigation_service.dart';
import '../../res/assets.dart';
import '../../res/colors.dart';

class Page28 extends StatefulWidget {
  const Page28({Key? key}) : super(key: key);

  @override
  State<Page28> createState() => _Page28State();
}

class _Page28State extends State<Page28> {
  @override
  Widget build(BuildContext context) {
    List<String> days = ['Mon', 'Tue', 'Wed', 'Thr', 'Fri', 'Sat', 'Sun'];
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 22.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mon, Jun 24th, 2021',
                          style: TextStyle(
                            fontFamily: GoogleFonts.workSans().fontFamily,
                          ),
                        ),
                        Text(
                          'Daily activity',
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: GoogleFonts.workSans().fontFamily,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        GetIt.I.get<NavigationService>().back();
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                          color: AppColors.greyC4,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 90.h,
                width: size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 20),
                      ListView.separated(
                        itemCount: days.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 10);
                        },
                        itemBuilder: (context, index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Container(
                              height: 80.h,
                              // width: 75.h,
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                color: AppColors.greyC4,
                                borderRadius: BorderRadius.circular(8.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade50,
                                    spreadRadius: 1,
                                    blurRadius: 0,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    days[index],
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.workSans().fontFamily,
                                    ),
                                  ),
                                  Text(
                                    '${index + 20}',
                                    style: TextStyle(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily:
                                          GoogleFonts.workSans().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Jogging',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
              ),
              SizedBox(height: 11.h),
              Container(
                width: size.width,
                height: 120.h,
                padding: EdgeInsets.symmetric(vertical: 30.sp),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF262626),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    JoggingItem(
                      icon: Icons.location_on,
                      value: '750',
                      measure: 'Km',
                    ),
                    JoggingItem(
                      icon: Icons.watch_later_outlined,
                      value: '1.2',
                      measure: 'Hours',
                    ),
                    JoggingItem(
                      icon: Icons.directions_run,
                      value: '5.20',
                      measure: 'Speed',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Health Status',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: size.width,
                height: 210.h,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.greyC4,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(CupertinoIcons.heart),
                                  SizedBox(height: 10),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'bpm',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Image.asset('assets/png/28/graph.png'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      flex: 2,
                      child: Container(
                        // color: Colors.grey,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.greyC4,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '1200',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: GoogleFonts.workSans()
                                                .fontFamily,
                                          ),
                                        ),
                                        Text(
                                          'steps',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontFamily: GoogleFonts.workSans()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 50.w,
                                      height: 50.h,
                                      child:
                                          Image.asset('assets/png/28/bar.png'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.greyC4,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '520',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: GoogleFonts.workSans()
                                                .fontFamily,
                                          ),
                                        ),
                                        Text(
                                          'Calories',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontFamily: GoogleFonts.workSans()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    ),
                                    CircleAvatar(
                                      radius: 25.r,
                                      backgroundColor: Colors.black,
                                      child: CircleAvatar(
                                        radius: 23.r,
                                        backgroundColor: AppColors.greyC4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20.w),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90.h,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffE0E0E0),
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 33.w, right: 34.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.PG6_MOTION_PHOTOS_PAUSE,
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: 41.w,
                ),
                SvgPicture.asset(
                  Assets.PG6_CAST_CONNECTED,
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
                Spacer(),
                SvgPicture.asset(
                  Assets.PG6_DEBUG,
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: 41.w,
                ),
                SvgPicture.asset(
                  Assets.PG6_CONTACT,
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      floatingActionButton: Container(
        width: 76.w,
        height: 76.w,
        decoration: BoxDecoration(
          // color: Colors.blue,

          color: Color(0xffD0D0D0),
          borderRadius: BorderRadius.circular(76.w),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              spreadRadius: 3,
              blurRadius: 1,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Center(
          child: SvgPicture.asset(
            "assets/svg/21/pause_circle_outline.svg",
            height: 56.w,
            width: 56.w,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class JoggingItem extends StatelessWidget {
  final IconData icon;
  final String value;
  final String measure;

  const JoggingItem({
    Key? key,
    required this.icon,
    required this.value,
    required this.measure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: GoogleFonts.workSans().fontFamily,
          ),
        ),
        Text(
          measure,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.white,
            fontFamily: GoogleFonts.workSans().fontFamily,
          ),
        ),
      ],
    );
  }
}

class GoalCard extends StatelessWidget {
  final int goalNumber;

  const GoalCard({
    Key? key,
    required this.goalNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      // height: 100,
      padding: EdgeInsets.all(25.w),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.greyC4.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundColor: AppColors.greyC4,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Goals #$goalNumber',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.workSans().fontFamily,
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Container(
                    height: 5,
                    width: 100,
                    decoration: BoxDecoration(
                      color: AppColors.greyC4,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 5,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '20% completed',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: GoogleFonts.workSans().fontFamily,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.more_vert),
              Icon(Icons.more_vert),
            ],
          )
        ],
      ),
    );
  }
}
