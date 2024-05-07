import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';
import 'package:flutter_ui_kit_obkm/gen/colors.gen.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/page_51_list_item.dart';

class Page51 extends StatefulWidget {
  const Page51({Key? key}) : super(key: key);

  @override
  State<Page51> createState() => _Page51State();
}

class _Page51State extends State<Page51> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: 24.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 24.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: Assets.svg.m51.menuOpen.svg(
                        height: 24.r,
                        width: 24.r,
                        fit: BoxFit.fill,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: Assets.svg.m51.moreHoriz.svg(
                        height: 24.r,
                        width: 24.r,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Text(
                "Week in Singapore",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 24.sp,
                    color: ColorName.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: 10.h,
              ),
              Text(
                "2022 fashion show in Singapore",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    color: ColorName.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Text(
                "Explore",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 24.sp,
                    color: ColorName.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    12,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 48.w),
                      child: Text(
                        "Subtitle ${index + 1}",
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 14.sp,
                            color: ColorName.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ).toList(),
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    12,
                    (index) => Page51ListItem(),
                  ).toList(),
                ),
              ),
              SizedBox(
                height: 46.h,
              ),
              Container(
                height: 190.h,
                color: Color(0xffC4C4C4),
                margin: EdgeInsets.only(
                  right: 24.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
