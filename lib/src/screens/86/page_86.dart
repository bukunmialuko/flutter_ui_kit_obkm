import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page86 extends StatelessWidget {
  const Page86({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 215.h,
              decoration: ShapeDecoration(
                color: Color(0x7FC4C4C4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.r)),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                children: [
                  Text(
                    'Talks to remind you that politics all over the world are as boring as peeling a mango. ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  16.verticalSpace,
                  Row(
                    children: [
                      Text(
                        '11 talks',
                        style: TextStyle(
                          color: Color(0xFFA8A8A8),
                          fontSize: 12.sp,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      16.horizontalSpace,
                      Container(
                        height: 15.h,
                        decoration: BoxDecoration(
                            border: Border(
                          left: BorderSide(
                            width: 1,
                            color: Color(0xFFA8A8A8),
                          ),
                        )),
                      ),
                      16.horizontalSpace,
                      Text(
                        '3:36:45',
                        style: TextStyle(
                          color: Color(0xFFA8A8A8),
                          fontSize: 12.sp,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      16.horizontalSpace,
                      Container(
                        height: 15.h,
                        decoration: BoxDecoration(
                            border: Border(
                          left: BorderSide(
                            width: 1,
                            color: Color(0xFFA8A8A8),
                          ),
                        )),
                      ),
                      16.horizontalSpace,
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.volume_up,
                            color: Color(0xffA8A8A8),
                          ),
                          4.horizontalSpace,
                          Text(
                            'Listen',
                            style: TextStyle(
                              color: Color(0xFFA8A8A8),
                              fontSize: 12.sp,
                              fontFamily: 'Work Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  15.verticalSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.playlist_add,
                      ),
                      20.horizontalSpace,
                      Icon(
                        Icons.favorite_outline,
                      ),
                      20.horizontalSpace,
                      Icon(
                        Icons.download,
                      ),
                      20.horizontalSpace,
                      Icon(
                        Icons.share,
                      ),
                    ],
                  ),
                  16.verticalSpace,
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est eu tempor nec nulla pulvinar felis nunc. ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  16.verticalSpace,
                  VideoCard(),
                  16.verticalSpace,
                  VideoCard(),
                  16.verticalSpace,
                  VideoCard(),
                  16.verticalSpace,
                  VideoCard(),
                  16.verticalSpace,
                ],
              ),
            ),
          ],
        ),
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
