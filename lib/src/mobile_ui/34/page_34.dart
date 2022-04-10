import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/res/colors.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../navigation/navigation_service.dart';

class Page34 extends StatefulWidget {
  const Page34({Key? key}) : super(key: key);

  @override
  State<Page34> createState() => _Page34State();
}

class _Page34State extends State<Page34> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 37.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 61.r,
                      height: 61.r,
                      decoration: BoxDecoration(
                        color: Color(0xffC4C4C4),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "FOLLOWER",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 12.sp,
                                height: 1.167,
                                color: Color(0xffA8A8A8),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Text(
                            "2.3K",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                height: 1.25,
                                fontSize: 16.sp,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "FOLLOWING",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 12.sp,
                                height: 1.167,
                                color: Color(0xffA8A8A8),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Text(
                            "898",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 16.sp,
                                height: 1.25,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "FRIENDS",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 12.sp,
                                height: 1.167,
                                color: Color(0xffA8A8A8),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Text(
                            "200",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 16.sp,
                                height: 1.25,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 42.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "John Doe",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 24.sp,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Text(
                            "Designer",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 12.sp,
                                color: AppColors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        GetIt.I.get<NavigationService>().back();
                      },
                      child: Container(
                        height: 30.h,
                        width: 89.w,
                        decoration: BoxDecoration(
                          color: AppColors.black,
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: Center(
                            child: Text(
                              "FOLLOW",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 45.h,
                ),
                Text(
                  "ABOUT",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xffA8A8A8),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est amet in elit egestas amet, pulvinar. Diam egestas vitae amet in gravida condimentum maecenas morbi gravida. Nisi, mattis at ut sed phasellus sit vel id. Libero bibendum ultrices semper semper nibh... ",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      height: 1.57,
                      color: AppColors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  "read more",
                  style: GoogleFonts.workSans(
                    decoration: TextDecoration.underline,
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      height: 1.57,
                      color: Color(0xff0F62FE),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "FRIENDS",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xffA8A8A8),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      20,
                      (index) => Container(
                        width: 55.w,
                        height: 55.w,
                        margin: EdgeInsets.only(right: 16.w),
                        decoration: BoxDecoration(
                          color: Color(0xffC4C4C4),
                          borderRadius: BorderRadius.circular(55.w),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "PHOTOS",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xffA8A8A8),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 6.w,
                    crossAxisSpacing: 8.h,
                  ),
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Color(0xffC4C4C4),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
