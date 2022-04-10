import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_kit_obkm/src/res/colors.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../navigation/navigation_service.dart';

class Page42 extends StatefulWidget {
  const Page42({Key? key}) : super(key: key);

  @override
  State<Page42> createState() => _Page42State();
}

class _Page42State extends State<Page42> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 23.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 19.h,
                ),
                Text(
                  "Hello, John Doe",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Text(
                  "FOLLOWED",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      12,
                      (index) => GestureDetector(
                        onTap: () {
                          GetIt.I.get<NavigationService>().back();
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 16.w),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 72.w,
                                height: 72.w,
                                decoration: BoxDecoration(
                                  color: AppColors.greyC4,
                                  borderRadius: BorderRadius.circular(72.w),
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                "Artist name",
                                style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.black,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  "RECENTLY VIEWED ALBUMS",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      12,
                      (index) => GestureDetector(
                        onTap: () {
                          GetIt.I.get<NavigationService>().back();
                        },
                        child: Container(
                          width: 159.w,
                          margin: EdgeInsets.only(right: 16.w),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 159.w,
                                height: 159.h,
                                decoration: BoxDecoration(
                                  color: AppColors.greyC4,
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Album name",
                                          style: GoogleFonts.workSans(
                                            textStyle: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.black,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12.h,
                                        ),
                                        Text(
                                          "Artist name",
                                          style: GoogleFonts.workSans(
                                            textStyle: TextStyle(
                                              fontSize: 10.sp,
                                              color: Colors.black,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.w),
                                    child: SvgPicture.asset(
                                      "assets/svg/bookmark_border.svg",
                                      height: 24.r,
                                      width: 24.r,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  "RECENTLY LIKED",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      12,
                      (index) => Container(
                        width: 159.w,
                        margin: EdgeInsets.only(right: 16.w),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 159.w,
                              height: 159.h,
                              decoration: BoxDecoration(
                                color: AppColors.greyC4,
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Album name",
                                        style: GoogleFonts.workSans(
                                          textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12.h,
                                      ),
                                      Text(
                                        "Artist name",
                                        style: GoogleFonts.workSans(
                                          textStyle: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.black,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.w),
                                        child: SvgPicture.asset(
                                          "assets/svg/bookmark_border.svg",
                                          height: 24.r,
                                          width: 24.r,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 143.h,
        color: Color(0xff262626),
        padding: EdgeInsets.only(left: 25.w, right: 23.w),
        child: Row(
          children: [
            Container(
              width: 87.w,
              height: 87.w,
              color: AppColors.greyC4,
              margin: EdgeInsets.only(right: 18.w),
            ),
            Expanded(
              child: SizedBox(
                height: 87.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PLAYING NOW",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Song name",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      "Artist name",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                GetIt.I.get<NavigationService>().back();
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: 4.w,
                ),
                child: SvgPicture.asset(
                  "assets/svg/pause.svg",
                  height: 40.r,
                  width: 40.r,
                  fit: BoxFit.fill,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
