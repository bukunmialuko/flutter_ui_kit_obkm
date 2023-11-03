import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page88 extends StatelessWidget {
  const Page88({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: false,
          title: Text(
            "Talk topics",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 19),
          itemBuilder: (context, index) => VideoCard(),
          separatorBuilder: (BuildContext context, int index) =>
              16.verticalSpace,
          itemCount: 7,
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

class VideoCard extends StatelessWidget {
  const VideoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 151.w,
          height: 83.h,
          decoration: ShapeDecoration(
            color: Color(0x7FC4C4C4),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.r)),
          ),
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 11.w),
          alignment: Alignment.bottomRight,
          child: Container(
            padding: EdgeInsets.all(2.w),
            decoration: BoxDecoration(color: Color(0xFF262626)),
            child: Text(
              '20:20',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontFamily: 'Work Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        8.horizontalSpace,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Author name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              2.verticalSpace,
              Text(
                'Biden Ends Infrastructure Talks With Senate GOP Group.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        4.horizontalSpace,
        Icon(
          Icons.more_vert,
          color: Color(0xffA8A8A8),
        )
      ],
    );
  }
}
