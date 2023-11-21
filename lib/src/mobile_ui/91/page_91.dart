import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page91 extends StatelessWidget {
  const Page91({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 20.r,
              backgroundColor: Color(0xFFC4C4C4),
              foregroundColor: Colors.black,
              child: Icon(
                Icons.person,
                size: 24.w,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 12.w),
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hey, Oscar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                3.verticalSpace,
                Text(
                  'Where to next?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          32.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: ShapeDecoration(
                  color: Color(0xFFC4C4C4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              60.horizontalSpace,
              Container(
                width: 60,
                height: 60,
                decoration: ShapeDecoration(
                  color: Color(0xFFC4C4C4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              60.horizontalSpace,
              Container(
                width: 60,
                height: 60,
                decoration: ShapeDecoration(
                  color: Color(0xFFC4C4C4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ],
          ),
          37.verticalSpace,
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
                gapPadding: 7,
              ),
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic),
              fillColor: Color(0x1E767680),
              filled: true,
              hintText: "Search",
              hintStyle: TextStyle(
                color: Color(0x993C3C43),
                fontSize: 17,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.41,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 7.0,
              ),
            ),
          ),
          32.verticalSpace,
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore from Seattle',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                2.verticalSpace,
                Text(
                  'See the world on your budget',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          16.verticalSpace,
          Container(
            height: 320.h,
            decoration: ShapeDecoration(
              color: Color(0xFFC4C4C4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(horizontal: 33.w, vertical: 24.h),
            child: Container(
              width: double.infinity,
              height: 38.h,
              padding: const EdgeInsets.all(8),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              alignment: Alignment.center,
              child: Text(
                'Buy now',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF262626),
                  fontSize: 14,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          26.verticalSpace,
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get inspired',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                2.verticalSpace,
                Text(
                  'You think about your own copywriting :)) haha',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawerScrimColor: Colors.transparent,
      drawer: Drawer(
        backgroundColor: Color(0xFF262626),
        width: 316.w,
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 27.w, bottom: 14.h, top: 27.h),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: Color(0xFFC4C4C4),
                        shape: OvalBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'View profile',
                          style: TextStyle(
                            color: Color(0xFFA8A8A8),
                            fontSize: 12.sp,
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Color(0xff525252),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 27, right: 27, top: 22),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.sentiment_satisfied_alt,
                                    size: 24.w,
                                    color: Colors.white,
                                  ),
                                  16.horizontalSpace,
                                  Text(
                                    'Tab #1',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.sentiment_satisfied_alt,
                                    size: 24.w,
                                    color: Colors.white,
                                  ),
                                  16.horizontalSpace,
                                  Text(
                                    'Tab #2',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.sentiment_satisfied_alt,
                                    size: 24.w,
                                    color: Colors.white,
                                  ),
                                  16.horizontalSpace,
                                  Text(
                                    'Tab #3',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.sentiment_satisfied_alt,
                                    size: 24.w,
                                    color: Colors.white,
                                  ),
                                  16.horizontalSpace,
                                  Text(
                                    'Tab #4',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.sentiment_satisfied_alt,
                                    color: Colors.white,
                                    size: 24.w,
                                  ),
                                  16.horizontalSpace,
                                  Text(
                                    'Tab #5',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color(0xFFD0D0D0),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(right: 27, left: 27, bottom: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            27.verticalSpace,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Region',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontFamily: 'Work Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'United States',
                                  style: TextStyle(
                                    color: Color(0xFFA8A8A8),
                                    fontSize: 14.sp,
                                    fontFamily: 'Work Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            32.verticalSpace,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Currency',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontFamily: 'Work Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '\$ (USD)',
                                  style: TextStyle(
                                    color: Color(0xFFA8A8A8),
                                    fontSize: 14.sp,
                                    fontFamily: 'Work Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ],
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
    );
  }
}
