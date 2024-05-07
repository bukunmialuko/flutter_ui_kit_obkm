import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page79 extends StatelessWidget {
  const Page79({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: Text("Reading List"),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Work Sans',
            fontWeight: FontWeight.w600,
          ),
          centerTitle: false,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none),
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.black,
            isScrollable: true,
            labelStyle: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelColor: Color(0xFFA8A8A8),
            unselectedLabelStyle: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w500,
            ),
            labelPadding: EdgeInsets.symmetric(horizontal: 14.sp),
            indicatorColor: Colors.black,
            indicatorWeight: 3,
            tabs: [
              Tab(
                text: 'Saved (14)',
              ),
              Tab(
                text: 'Archived',
              ),
              Tab(
                text: 'Recently Viewed',
              ),
              Tab(
                text: 'Highlights',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Post(),
          Post(),
          Post(),
          Post(),
        ]),
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 19),
      child: Column(
        children: List.generate(
          6,
          (index) => PostCard(),
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
