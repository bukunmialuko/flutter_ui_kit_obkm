import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page77 extends StatelessWidget {
  const Page77({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text("Interests"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 26.h, horizontal: 24.w),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Design & technology',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            20.verticalSpace,
            ...List.generate(
              8,
              (index) => SettingsCard(
                title: 'Topic #${index + 1}',
                isFollowing: index % 2 == 1,
              ),
            )
          ],
        ),
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
                padding: EdgeInsets.symmetric(horizontal: 27, vertical: 22),
                color: Color(0xff525252),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tab #1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Tab #2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Tab #3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Tab #4',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 48.h,
                    ),
                    Text(
                      'Tab #5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Tab #6',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Tab #7',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    required this.title,
    this.isFollowing = false,
  });

  final String title;
  final bool isFollowing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 18.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 51,
                  height: 51,
                  decoration: ShapeDecoration(
                    color: Color(0xFFC4C4C4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                12.horizontalSpace,
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 98.w,
            height: 34.h,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: ShapeDecoration(
              color: !isFollowing ? Color(0xFF0043CE) : null,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 1,
                    color:
                        !isFollowing ? Color(0xFF0043CE) : Color(0xFF262626)),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              !isFollowing ? 'Follow' : 'Following',
              style: TextStyle(
                color: !isFollowing ? Colors.white : Colors.black,
                fontSize: 14.sp,
                fontFamily: 'Work Sans',
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
