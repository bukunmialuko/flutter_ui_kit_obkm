import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page87 extends StatelessWidget {
  const Page87({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'My Ramdom ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: 'Talk',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 150.h,
              decoration: BoxDecoration(color: Color(0x7FD0D0D0)),
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, top: 17.h, bottom: 9.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Color(0xFFC4C4C4),
                        foregroundColor: Colors.black,
                        child: Icon(
                          Icons.person,
                          size: 36.w,
                        ),
                      ),
                      24.horizontalSpace,
                      Column(
                        children: [
                          Text(
                            'Log in to your account',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Work Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          4.verticalSpace,
                          Text(
                            'Sync my list, likes, and history',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Work Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  26.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        // width: 71.w,
                        height: 38.h,
                        padding: EdgeInsets.all(8.w),
                        decoration: BoxDecoration(color: Color(0xFFDA1E28)),
                        alignment: Alignment.center,
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 21.h, horizontal: 26.w),
                children: [
                  Cards(
                    icon: Icons.playlist_add,
                    title: "My List",
                  ),
                  24.verticalSpace,
                  Cards(
                    icon: Icons.favorite_border,
                    title: "Likes",
                  ),
                  24.verticalSpace,
                  Cards(
                    icon: Icons.download,
                    title: "Downloads",
                  ),
                  24.verticalSpace,
                  Cards(
                    icon: Icons.share,
                    title: "Share",
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 3,
            selectedItemColor: Colors.red,
            unselectedItemColor: Color(0xffA8A8A8),
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.control_point_duplicate),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.cast_connected),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.horizontal_split),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.perm_contact_cal),
                label: "",
              ),
            ]),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 26.w,
        ),
        60.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Work Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
            4.verticalSpace,
            Text(
              'No talks',
              style: TextStyle(
                color: Color(0xFFA8A8A8),
                fontSize: 12,
                fontFamily: 'Work Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        )
      ],
    );
  }
}
