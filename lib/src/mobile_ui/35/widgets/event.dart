import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF4F4F4),
          borderRadius: BorderRadius.circular(36),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 0),
            ),
          ],
        ),
        height: 365.h,
        child: Column(
          children: [
            SizedBox(
              height: 170.h,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    height: 170.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.r), topRight: Radius.circular(24.r)),
                      image: DecorationImage(
                        image: AssetImage('assets/png/m35/img1.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20.w,
                    top: 21.h,
                    child: Container(
                      width: 40.w,
                      height: 40.w,
                      decoration: BoxDecoration(color: Color(0xffD0D0D0), shape: BoxShape.circle),
                      child: Icon(Icons.favorite),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 190.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF4F4F4),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24.r), bottomRight: Radius.circular(24.r)),
              ),
              padding: EdgeInsets.only(left: 18.w, right: 34.w, top: 17.h, bottom: 31.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EVENTS",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                      height: 1.1,
                      color: Color(0xff000000),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 4.h),
                    child: Text(
                      "National health movement",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        height: 1.3,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum, proin sed erat amet platea.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      height: 1.3,
                      color: Color(0xff000000),
                    ),
                    maxLines: 3,
                  ),
                  Spacer(),
                  SizedBox(
                    height: 36.h,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 36.h,
                          width: 36.h,
                          margin: EdgeInsets.only(right: 8.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            image: DecorationImage(
                              image: AssetImage('assets/png/m35/img3.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 36.h,
                          width: 36.h,
                          margin: EdgeInsets.only(right: 8.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            image: DecorationImage(
                              image: AssetImage('assets/png/m35/img4.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 36.h,
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          margin: EdgeInsets.only(right: 8.w),
                          decoration: BoxDecoration(
                            color: Color(0xFFC4C4C4),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "+12",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              height: 1.1,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 36.h,
                          padding: EdgeInsets.symmetric(horizontal: 21.5.w),
                          decoration: BoxDecoration(
                              color: Color(0xFFC4C4C4), borderRadius: BorderRadius.circular(8.r)),
                          alignment: Alignment.center,
                          child: Text(
                            "Join",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              height: 1.1,
                              color: Color(0xff000000),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
