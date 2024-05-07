import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page47 extends StatelessWidget {
  const Page47({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Head(),
              SizedBox(
                height: 11.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 285.w,
                    height: 60.h,
                    child: Text(
                      "Write an interesting book title #1",
                      style: TextStyle(
                        fontFamily: GoogleFonts.workSans().fontFamily,
                        fontSize: 24.sp,
                        height: 1.07.h,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 64.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 30.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36.r),
                  color: Color(0xFFF4F4F4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: Offset(0, 4),
                      blurRadius: 16,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    3,
                    (index) => ListItem(),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          SizedBox(
            height: 16.h,
          ),
          Divider(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32.h,
          ),
          Text(
            "Book Chapter",
            style: TextStyle(
              fontFamily: GoogleFonts.workSans().fontFamily,
              fontSize: 24.sp,
              height: 1.17.h,
            ),
          ),
          Text(
            "Write a sentence of chapter description.",
            style: TextStyle(
              fontFamily: GoogleFonts.workSans().fontFamily,
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              height: 1.29.h,
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.arrow_forward,
                size: 48.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Head extends StatelessWidget {
  const Head({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: Color(0xffA8A8A8),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reading re-defined",
                style: TextStyle(
                  fontFamily: GoogleFonts.workSans().fontFamily,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  height: 1.29.h,
                ),
              ),
              Icon(Icons.menu_open),
            ],
          ),
          SizedBox(
            height: 11.h,
          ),
          Icon(Icons.arrow_back),
          Divider(
            color: Color(0xffA8A8A8),
          ),
        ],
      ),
    );
  }
}
