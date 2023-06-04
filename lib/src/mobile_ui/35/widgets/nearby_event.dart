import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearbyEvent extends StatelessWidget {
  const NearbyEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80.h,
            decoration: BoxDecoration(
              color: (Color(0xffF4F4F4)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.r), topRight: Radius.circular(24.r)),
            ),
            child: Container(
              margin: EdgeInsets.only(left: 36.w, right: 36.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nearby Events",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: Color(0xff000000),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xff000000),
                        size: 16,
                      ),
                      Expanded(
                        child: Text(
                          "110 Chan Tin Lau street, Hong Kong",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Color(0xff000000),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 350.h,
            decoration: BoxDecoration(
              color: (Color(0xffF4F4F4)),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24.r), bottomRight: Radius.circular(24.r)),
              image: DecorationImage(
                image: AssetImage('assets/png/m35/img5.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Spacer(),
                _ListItem(),
                _ListItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.h,
      margin: EdgeInsets.only(left: 20.w, right: 21.w, bottom: 8.h),
      decoration:
          BoxDecoration(color: (Color(0xffF4F4F4)), borderRadius: BorderRadius.circular(16.r)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 45.w,
            height: 55.h,
            margin: EdgeInsets.only(left: 21.w, right: 20.w),
            decoration:
                BoxDecoration(color: Color(0xffD0D0D0), borderRadius: BorderRadius.circular(16.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Jun",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    height: 1.2,
                    color: Color(0xff000000),
                  ),
                ),
                Text(
                  "16",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    height: 1.2,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Event name #1",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    height: 1.2,
                    color: Color(0xff000000),
                  ),
                ),
                Text(
                  "\$500 · 8 - 9 am",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    height: 1.2,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          // Spacer(),
          Container(
            margin: EdgeInsets.only(right: 20.w),
            child: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
