import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Page54 extends StatelessWidget {
  const Page54({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Container(
                width: 146.w,
                height: 146.w,
                margin: EdgeInsets.only(bottom: 29.h, top: 117.h),
                decoration: BoxDecoration(color: Color(0xffC4C4C4), shape: BoxShape.circle),
              ),
            ),
            Center(
              child: Container(
                width: 146.w,
                height: 20.h,
                margin: EdgeInsets.only(bottom: 94.h),
                decoration: BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(50.r),
                    shape: BoxShape.rectangle),
              ),
            ),
            Center(
              child: Container(
                width: 342.w,
                height: 51.h,
                margin: EdgeInsets.only(bottom: 20.h),
                decoration: BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(50.r),
                    shape: BoxShape.rectangle),
              ),
            ),
            Center(
              child: Container(
                width: 342.w,
                height: 51.h,
                decoration: BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(50.r),
                    shape: BoxShape.rectangle),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Center(
                child: Container(
                  width: 342.w,
                  height: 51.h,
                  margin: EdgeInsets.only(bottom: 20.h),
                  decoration: BoxDecoration(
                      color: Color(0xffA8A8A8),
                      borderRadius: BorderRadius.circular(50.r),
                      shape: BoxShape.rectangle),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
