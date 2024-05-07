import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';
import 'package:flutter_ui_kit_obkm/gen/colors.gen.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Page9 extends StatefulWidget {
  const Page9({Key? key}) : super(key: key);

  @override
  State<Page9> createState() => _Page9State();
}

class _Page9State extends State<Page9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: MediaQuery.of(context).viewPadding.top),
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h, bottom: 14.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Assets.svg.m9.eyeTube.svg(
                    height: 24.r,
                    width: 120.r,
                    fit: BoxFit.fill,
                  ),
                  Assets.svg.m9.addToHomeScreen.svg(
                    height: 24.r,
                    width: 24.r,
                    fit: BoxFit.fill,
                  ),
                  Assets.svg.m9.notifications.svg(
                    height: 24.r,
                    width: 24.r,
                    fit: BoxFit.fill,
                  ),
                  Assets.svg.m9.search.svg(
                    height: 24.r,
                    width: 24.r,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    width: 24.r,
                    height: 24.r,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.r),
                      color: ColorName.grayC4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 3.h,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              children: [
                SizedBox(
                  height: 62.h,
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (c, i) {
                      if (i == 0) {
                        return Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(48.r),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    spreadRadius: 0,
                                    blurRadius: 8,
                                    offset: const Offset(0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.only(left: 14.w, top: 14.h, bottom: 14.h),
                              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                              child: Text(
                                "All",
                                style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }

                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(48.r),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 8,
                                  offset: const Offset(0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(left: 14.w, top: 14.h, bottom: 14.h),
                            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                            child: Text(
                              "Category #$i",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 12.w,
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 100.h,
                      color: Colors.grey,
                      margin: EdgeInsets.only(
                        top: 20.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24.w, right: 17.w, top: 20.h, bottom: 35.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 48.r,
                            height: 48.r,
                            margin: EdgeInsets.only(right: 12.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.r),
                              color: ColorName.grayC4,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  style: GoogleFonts.workSans(
                                    textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Artist · ",
                                      style: GoogleFonts.workSans(
                                        textStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "3.7M views",
                                      style: GoogleFonts.workSans(
                                        textStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      " · 2 years ago",
                                      style: GoogleFonts.workSans(
                                        textStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 3.h,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, bottom: 35.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                        child: Text(
                          "Stuff that gets you hooked",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200.h,
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                          scrollDirection: Axis.horizontal,
                          itemCount: 7,
                          itemBuilder: (c, i) {
                            return Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.r),
                                  child: Container(
                                    width: 140.w,
                                    height: 200.h,
                                    color: ColorName.grayC4,
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        Container(
                                          width: 140.w,
                                          height: 200.h,
                                          color: Colors.grey,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            padding: EdgeInsets.only(bottom: 12.w),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Assets.svg.m9.ellipse.svg(
                                                  height: 48.r,
                                                  width: 48.r,
                                                  fit: BoxFit.fill,
                                                ),
                                                SizedBox(height: 8.h),
                                                Text(
                                                  "Artist name",
                                                  maxLines: 1,
                                                  style: GoogleFonts.workSans(
                                                    textStyle: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: Colors.black,
                                                      fontStyle: FontStyle.normal,
                                                      fontWeight: FontWeight.w400,
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
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 14.w,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 3.h,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Container(
                      height: 100.h,
                      color: Colors.grey,
                      margin: EdgeInsets.only(
                        top: 20.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24.w, right: 17.w, top: 20.h, bottom: 35.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 48.r,
                            height: 48.r,
                            margin: EdgeInsets.only(right: 12.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.r),
                              color: ColorName.grayC4,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  style: GoogleFonts.workSans(
                                    textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Artist · ",
                                      style: GoogleFonts.workSans(
                                        textStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "3.7M views",
                                      style: GoogleFonts.workSans(
                                        textStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      " · 2 years ago",
                                      style: GoogleFonts.workSans(
                                        textStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 3.h,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
