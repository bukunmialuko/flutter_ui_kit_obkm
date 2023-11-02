import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';

class Page89 extends StatelessWidget {
  const Page89({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: SizedBox(
          height: 36.h,
          child: TextField(
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
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 17.h),
        child: Column(
          children: [
            Section(
              title: 'Hot topics',
              child: SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) => Container(
                    margin: EdgeInsets.only(
                      left: index == 0 ? 13.w : 0,
                      right: 8.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 129.w,
                          height: 129.w,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFA8A8A8)),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Assets.png.m89.onlineLearning1.image(
                            width: 50.w,
                            height: 50.h,
                          ),
                        ),
                        4.verticalSpace,
                        Text(
                          'Topic #1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  itemCount: 3,
                ),
              ),
            ),
            Section(
              title: 'Playlist',
              child: SizedBox(
                height: 268.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) => Container(
                    width: 168.w,
                    margin: EdgeInsets.only(
                      left: index == 0 ? 12.w : 0,
                      right: 16.w,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0x7FD0D0D0),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 168.w,
                          height: 200.h,
                          decoration: BoxDecoration(color: Color(0xFFC4C4C4)),
                          padding: EdgeInsets.symmetric(
                              vertical: 11.h, horizontal: 7.w),
                          alignment: Alignment.bottomRight,
                          child: Container(
                            padding: EdgeInsets.all(2.w),
                            decoration: BoxDecoration(color: Color(0xFF262626)),
                            child: Text(
                              '11 talks',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontFamily: 'Work Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 4.w, right: 4.w, left: 4.w, bottom: 4.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  'Biden Ends Infrastructure Talks With Senate GOP Group.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontFamily: 'Work Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              5.horizontalSpace,
                              Icon(Icons.more_vert),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  itemCount: 3,
                ),
              ),
            ),
            41.verticalSpace,
            Section(
                title: "Speakers",
                child: SizedBox(
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) => Container(
                      width: 105,
                      height: 105,
                      margin: EdgeInsets.only(
                        left: 12.0,
                        right: 4,
                      ),
                      decoration: ShapeDecoration(
                        color: Color(0xFFC4C4C4),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                )),
          ],
        ),
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
    );
  }
}

class Section extends StatelessWidget {
  final Widget child;

  const Section({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
          12.verticalSpace,
          child,
        ],
      ),
    );
  }
}
