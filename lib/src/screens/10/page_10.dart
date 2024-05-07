import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';
import 'package:flutter_ui_kit_obkm/gen/colors.gen.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Page10 extends StatefulWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  State<Page10> createState() => _Page10State();
}

class _Page10State extends State<Page10> {
  List<String> images = [
    Assets.png.m10.img1.path,
    Assets.png.m10.img2.path,
    Assets.png.m10.img3.path,
    Assets.png.m10.img4.path,
    Assets.png.m10.img5.path,
    Assets.png.m10.img6.path,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 53.w, right: 56.w, top: 35.h, bottom: 57.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "John Doe",
                    style: GoogleFonts.workSans(
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Container(
                      width: 96.r,
                      height: 96.r,
                      margin: EdgeInsets.only(top: 35.h, bottom: 19.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(96.r),
                        color: ColorName.grayC4,
                      ),
                    ),
                  ),
                  Text(
                    "@johnamazingdoe",
                    style: GoogleFonts.workSans(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 54.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "9",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              "Following",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "129K",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              "Followers",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "7.2M",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              "views",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 36.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xffD0D0D0),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 6.h),
                          child: Text(
                            'Follow',
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xffD0D0D0),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 6.h),
                          child: Text(
                            'Message',
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 24.w, right: 25.w, bottom: 18.h),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.photo),
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Text(
                                "Photos",
                                style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Container(
                          height: 2.h,
                          width: 76.w,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.video_camera_back_rounded,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Text(
                                "Videos",
                                style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        SizedBox(height: 2.h, width: 76.w
                            // color: Colors.black,
                            )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.emoji_emotions,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Text(
                                "Tagged",
                                style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        SizedBox(
                          height: 2.h,
                          width: 76.w,
                          // color: Colors.black,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 13.w, right: 11.w),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.0,
                children: List.generate(
                  images.length,
                  (index) {
                    return Container(
                      height: 122.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
