import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page74 extends StatelessWidget {
  const Page74({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text("Home"),
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
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            SizedBox(
              height: 177.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) => Container(
                  width: 318.w,
                  margin: EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    children: [
                      Container(
                        width: 318.w,
                        height: 80.h,
                        decoration: BoxDecoration(color: Color(0xFFC4C4C4)),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              'G-7 finance ministers strike landmark deal on taxing multinationals, tech giants',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontFamily: 'Work Sans',
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Author Name',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Work Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                'May 20 · 5 min read',
                                style: TextStyle(
                                  color: Color(0xFFA8A8A8),
                                  fontSize: 12.sp,
                                  fontFamily: 'Work Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.bookmark_border,
                                size: 24.w,
                              ),
                              SizedBox(width: 24.w),
                              Icon(
                                Icons.more_vert,
                                size: 24.w,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              color: Color(0xFFD0D0D0),
            ),
            SizedBox(
              height: 56.h,
            ),
            ...List.generate(
              3,
              (index) => PostCard(),
            ),
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

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, left: 8, right: 8),
      padding: EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xffD0D0D0)),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How to use design thinking in your projects',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'At some point, you would want to ..',
                      style: TextStyle(
                        color: Color(0xFFA8A8A8),
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 4, bottom: 6),
                    width: 80.w,
                    height: 80.w,
                    decoration: BoxDecoration(color: Color(0xFF525252)),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      width: 24.w,
                      height: 24.w,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA8A8A8),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 2, color: Color(0xFF525252)),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Author Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 2.sp),
                  Text(
                    'May 20 · 5 min read',
                    style: TextStyle(
                      color: Color(0xFFA8A8A8),
                      fontSize: 12.sp,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.bookmark_border,
                    size: 24.w,
                  ),
                  SizedBox(width: 24.sp),
                  Icon(
                    Icons.more_vert,
                    size: 24.w,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
