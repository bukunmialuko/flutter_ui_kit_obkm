import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page94 extends StatelessWidget {
  const Page94({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: false,
          title: Text("Workouts"),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: "For You",
              ),
              Tab(
                text: "Browse",
              ),
              Tab(
                text: "Expert Tips",
              ),
              Tab(
                text: "Collections",
              ),
              Tab(
                text: "Trainer",
              ),
            ],
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 31.h),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.w),
              child: Text(
                'Perfect For Home',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            17.verticalSpace,
            SizedBox(
              height: 300.h,
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  width: 220.w,
                  height: 300.h,
                  margin: EdgeInsets.only(
                    right: 13.w,
                    left: index == 0 ? 13.w : 0,
                  ),
                  decoration: BoxDecoration(color: Color(0xFFE4E4E4)),
                  padding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 11.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 32.w,
                            height: 32.w,
                            decoration: ShapeDecoration(
                              color: Color(0xFF525252),
                              shape: OvalBorder(),
                            ),
                            child: Icon(
                              Icons.bookmark_border,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            Text(
                              '5-min bodyweight burn: core wake-up call',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontFamily: 'Work Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '6 min - Beginner',
                                  style: TextStyle(
                                    color: Color(0xFFA8A8A8),
                                    fontSize: 12.sp,
                                    fontFamily: 'Work Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  width: 32.w,
                                  height: 32.w,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF525252),
                                    shape: OvalBorder(),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            41.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.w),
              child: Text(
                'New Workouts',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            17.verticalSpace,
            SizedBox(
              height: 300.h,
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  width: 220.w,
                  height: 300.h,
                  margin: EdgeInsets.only(
                    right: 13.w,
                    left: index == 0 ? 13.w : 0,
                  ),
                  decoration: BoxDecoration(color: Color(0xFFE4E4E4)),
                  padding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 11.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 32.w,
                            height: 32.w,
                            decoration: ShapeDecoration(
                              color: Color(0xFF525252),
                              shape: OvalBorder(),
                            ),
                            child: Icon(
                              Icons.bookmark_border,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            Text(
                              '5-min bodyweight burn: core wake-up call',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontFamily: 'Work Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '6 min - Beginner',
                                  style: TextStyle(
                                    color: Color(0xFFA8A8A8),
                                    fontSize: 12.sp,
                                    fontFamily: 'Work Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  width: 32.w,
                                  height: 32.w,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF525252),
                                    shape: OvalBorder(),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}
