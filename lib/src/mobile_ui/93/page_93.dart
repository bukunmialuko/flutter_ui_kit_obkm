import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page93 extends StatelessWidget {
  const Page93({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          '1/1',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            fontFamily: 'Work Sans',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 173.h, left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How many times do you workout per week?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontFamily: 'Work Sans',
                fontWeight: FontWeight.w500,
              ),
            ),
            7.verticalSpace,
            Text(
              'We’ll use this to recommend workouts for you to try. ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                fontFamily: 'Work Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
            65.verticalSpace,
            WorkOutChoiceButton(
              title: '0 - 1 Workouts',
              caption: 'I’m a little rusty',
            ),
            24.verticalSpace,
            WorkOutChoiceButton(
              title: '2 - 4 Workouts',
              caption: 'I’m a regular',
            ),
            24.verticalSpace,
            WorkOutChoiceButton(
              title: '5+ Workouts',
              caption: 'I’m ready for anything',
            ),
            24.verticalSpace,
          ],
        ),
      ),
    );
  }
}

class WorkOutChoiceButton extends StatelessWidget {
  const WorkOutChoiceButton({
    super.key,
    required this.title,
    required this.caption,
  });

  final String title;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85.h,
      padding: EdgeInsets.only(left: 32.w),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF262626)),
          borderRadius: BorderRadius.circular(64),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            caption,
            style: TextStyle(
              color: Color(0xFFA8A8A8),
              fontSize: 14,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
