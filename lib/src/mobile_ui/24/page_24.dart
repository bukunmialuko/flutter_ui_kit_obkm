import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../navigation/navigation_service.dart';
import '../../res/assets.dart';

class Page24 extends StatefulWidget {
  const Page24({Key? key}) : super(key: key);

  @override
  State<Page24> createState() => _Page24State();
}

class _Page24State extends State<Page24> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Daily',
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontFamily: GoogleFonts.workSans().fontFamily,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Workout',
                              style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: GoogleFonts.workSans().fontFamily,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(CupertinoIcons.chevron_down),
                            ),
                          ],
                        ),
                        SizedBox(height: 40.h),
                        Text(
                          'Categories',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w300,
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
                        height: 40.w,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 80.w,
                width: size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 20),
                      ListView.separated(
                        itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 10);
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            height: 75.h,
                            width: 75.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.sports_basketball_outlined,
                                size: 30,
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
              Container(
                width: size.width,
                height: 145.h,
                padding: EdgeInsets.all(30.w),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Running session',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: GoogleFonts.workSans().fontFamily,
                      ),
                    ),
                    Container(
                      height: 32.h,
                      width: 115,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.play_arrow_rounded,
                            color: Color(0xFF525252),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '30 min',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF525252),
                              fontFamily: GoogleFonts.workSans().fontFamily,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 35.h),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Join groups',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w300,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: size.width,
                height: 230,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      ListView.separated(
                        itemCount: 5,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 20.h);
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            // height: 240.h,
                            width: 244.h,
                            decoration: BoxDecoration(
                              // color: Colors.green,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 244.w,
                                  height: 160.h,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  '8 am - 9 am',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Running session with Cindy',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
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
            padding: EdgeInsets.only(left: 54.w, right: 54.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.PG6_MOTION_PHOTOS_PAUSE,
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
                SvgPicture.asset(
                  Assets.PG6_CAST_CONNECTED,
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
                SvgPicture.asset(
                  Assets.PG6_DEBUG,
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
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
            color: Colors.grey.withOpacity(0.5),
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
            backgroundColor: Colors.grey,
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
                      color: Colors.grey,
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
