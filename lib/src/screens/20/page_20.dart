import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Page20 extends StatelessWidget {
  const Page20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: 13.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          context.pop();
                        },
                        child: CircleAvatar(
                          radius: 24.r,
                          backgroundColor: Color(0xFFC4C4C4),
                          child: Center(
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 45.h),
            Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 50.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                          color: Color(0xFF262626),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: 20,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 10);
                        },
                        itemBuilder: (context, index) {
                          return SongTile(
                            isPlaying: index == 2 ? true : false,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SongTile extends StatelessWidget {
  final bool isPlaying;

  const SongTile({
    Key? key,
    required this.isPlaying,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: isPlaying ? Color(0xFF262626) : Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 80.h,
            width: 80.h,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xFFC4C4C4),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Song name #1',
                style: TextStyle(
                  color: isPlaying ? Colors.white : Colors.black,
                  fontSize: 20.sp,
                ),
              ),
              Text(
                'Artist name',
                style: TextStyle(
                  color: Color(0xFFD0D0D0),
                ),
              ),
            ],
          ),
          Icon(
            Icons.pause,
            color: isPlaying ? Colors.white : Colors.black,
          ),
        ],
      ),
    );
  }
}
