import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Page33 extends StatefulWidget {
  const Page33({Key? key}) : super(key: key);

  @override
  State<Page33> createState() => _Page33State();
}

class _Page33State extends State<Page33> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 249.h,
              child: Stack(
                children: [
                  Container(
                    color: Color(0xffC4C4C4),
                    height: 186.h,
                  ),
                  Positioned(
                    right: 121.w,
                    bottom: 0,
                    child: Container(
                      width: 150.w,
                      height: 150.w,
                      // margin: EdgeInsets.only(
                      //   top: 99.h,
                      // ),
                      decoration: BoxDecoration(
                        color: Color(0xff525252),
                        borderRadius: BorderRadius.circular(150.w),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "John Doe",
              style: GoogleFonts.workSans(
                textStyle: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Designer",
              style: GoogleFonts.workSans(
                textStyle: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Container(
                    width: 90.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.h),
                      border: Border.all(color: Colors.black, width: 1.w),
                    ),
                    child: Center(
                      child: Text(
                        "ADD FRIEND",
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Container(
                    width: 90.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: Color(0xff262626),
                      borderRadius: BorderRadius.circular(30.h),
                    ),
                    child: Center(
                      child: Text(
                        "FOLLOW",
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 74.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ABOUT",
                    style: GoogleFonts.workSans(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xffA8A8A8),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra rutrum elementum nunc velit dui dui, penatibus.",
                    style: GoogleFonts.workSans(
                      textStyle: TextStyle(
                        fontSize: 12.sp,
                        color: Color(0xffA8A8A8),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "PHOTOS",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xffA8A8A8),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 30,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 6.w,
              ),
              itemBuilder: (c, i) {
                return Container(
                  height: 110.h,
                  color: Color(0xffC4C4C4),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
