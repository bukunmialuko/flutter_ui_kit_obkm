import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../navigation/navigation_service.dart';

class Page52 extends StatefulWidget {
  const Page52({Key? key}) : super(key: key);

  @override
  State<Page52> createState() => _Page52State();
}

class _Page52State extends State<Page52> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/png/52/model.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Spacer(),
                  SvgPicture.asset(
                    "assets/svg/52/more_horiz.svg",
                    width: 24.w,
                    height: 24.w,
                  ),
                  SizedBox(
                    width: 22.w,
                  ),
                ],
              ),
              SizedBox(
                height: 59.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/52/comment.svg",
                        width: 24.w,
                        height: 24.w,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        '12',
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 32.h),
                      SvgPicture.asset(
                        "assets/svg/52/online_prediction.svg",
                        width: 24.w,
                        height: 24.w,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        '412',
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 32.h),
                      SvgPicture.asset(
                        "assets/svg/52/timer.svg",
                        width: 24.w,
                        height: 24.w,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        '12',
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),

              /// ClipRect would also work here
              ClipRRect(
                borderRadius: BorderRadius.circular(30.r),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    width: 343.w,
                    height: 190.h,
                    padding: EdgeInsets.only(
                        left: 23.w, right: 30.w, top: 20.h, bottom: 15.h),
                    decoration: BoxDecoration(
                      color: Color(0x66C4C4C4),
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Model name",
                          style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                              fontSize: 24.sp,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Expanded(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed amet vel cursus at. Sit consectetur euismod dolor porttitor enim id tempus.",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              GetIt.I.get<NavigationService>().back();
                            },
                            child: Container(
                              width: 90.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  30.h,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Follow",
                                    style: GoogleFonts.workSans(
                                      textStyle: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  SvgPicture.asset(
                                    "assets/svg/52/add_circle.svg",
                                    width: 24.w,
                                    height: 24.w,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 41.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
