import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// Todo: Page needs improvements
class Page48 extends StatelessWidget {
  const Page48({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              thickness: 1,
              color: Color(0xFFA8A8A8),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reading re-defined',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                Icon(Icons.menu_open_rounded),
              ],
            ),
            SizedBox(height: 10.h),
            GestureDetector(onTap: () => context.pop(), child: Icon(Icons.arrow_back)),
            SizedBox(height: 5.h),
            Divider(
              thickness: 1,
              color: Color(0xFFA8A8A8),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Write an interesting book title #1',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                Icon(Icons.bookmarks),
              ],
            ),
            SizedBox(height: 60.h),
            Container(
              width: double.infinity,
              height: 480.h,
              decoration: BoxDecoration(
                color: Color(0xFFF4F4F4),
                borderRadius: BorderRadius.circular(36),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Top
                  Column(
                    children: [
                      Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add_circle_outline),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.mic),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.palette),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.font_download),
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xFFA8A8A8),
                      ),
                    ],
                  ),

                  /// Center
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      // color: Colors.green[100],
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Center',
                            style: TextStyle(
                              fontSize: 28.sp,
                              fontFamily: GoogleFonts.workSans().fontFamily,
                            ),
                          ),
                          SizedBox(width: 12.h),
                          Expanded(
                            child: Container(
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris, iaculis risus, vitae, blandit. Viverra ut scelerisque sit amet, duis id gravida. Sed habitant enim, in accumsan et. Pellentesque nisl purus bibendum adipiscing ac elementum, at eget. Purus pellentesque urna ante sed pellentesque nibh platea velit nulla. Morbi habitasse massa donec rhoncus, amet quam. Vitae pharetra, feugiat sagittis quis. Massa, at orci, phasellus in consequat gravida id elit. Tellus ipsum ligula lectus pellentesque arcu. At quisque velit tristique egestas dui morbi dui. Sit orci sodales varius lorem ac in eu, orci. Ac suspendisse aenean mauris sed accumsan',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: GoogleFonts.workSans().fontFamily,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// Bottom
                  Column(
                    children: [
                      Container(
                        height: 60,
                        padding: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 20.h),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.skip_previous),
                              ),
                              Expanded(
                                child: SizedBox(
                                  // color: Colors.green[100],
                                  width: (size.width / 1.7).w,
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      trackHeight: 3.h,
                                      thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 5.585.r,
                                        disabledThumbRadius: 5.585.r,
                                      ),
                                    ),
                                    child: Slider(
                                      value: 2,
                                      min: 1,
                                      max: 3,
                                      activeColor: Color(0xFFDA1E28),
                                      inactiveColor: Color(0xFFA8A8A8),
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.skip_next),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Divider(
                      //   thickness: 1,
                      //   color: Color(0xFFA8A8A8),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
