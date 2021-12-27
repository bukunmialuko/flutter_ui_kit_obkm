import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_kit_obkm/res/asset_images.dart';
import 'package:flutter_ui_kit_obkm/src/res/colors.dart';
import 'package:flutter_ui_kit_obkm/src/res/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  static int initialPage = 0;
  int maximumPage = 321;

  final PageController _controller =
      PageController(initialPage: initialPage, viewportFraction: 0.8);

  double currentPageValue = 3;

  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        currentPageValue = _controller.page!;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 37.h),
            Center(
              child: Text(
                "Sally's music",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 30.h),
            Center(
              child: Text(
                "${currentPageValue.toInt()} of $maximumPage",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 11.h),
            SizedBox(
              height: 340.r,
              child: PageView.builder(
                controller: _controller,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemBuilder: (context, position) {
                  if (position == currentPageValue.floor()) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.w),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.r),
                        child: Container(
                          width: 267.r,
                          height: 340.r,
                          color: const Color(0xffD0D0D0),
                        ),
                      ),
                    );
                  } else if (position == currentPageValue.floor() + 1) {
                    return Transform.scale(
                      scale: 0.9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.r),
                        child: Container(
                          width: 267.r,
                          height: 340.r,
                          color: Colors.blue,
                        ),
                      ),
                    );
                  } else {
                    return Transform.scale(
                      scale: 0.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.r),
                        child: Container(
                          width: 267.r,
                          height: 340.r,
                          color: Colors.red,
                        ),
                      ),
                    );
                  }
                },
                itemCount: maximumPage, // Can be null
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  SizedBox(height: 32.h),
                  Center(
                    child: Text(
                      "Simply dangerous",
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Center(
                    child: Text(
                      "Artist name",
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 32.h),
                  // Row(
                  //   children: [],
                  // )
                  Stack(
                    children: [
                      Container(
                        height: 6.h,
                        width: 342.w,
                        decoration: BoxDecoration(
                            color: const Color(0xFFC4C4C4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.r))),
                      ),
                      Container(
                        height: 6.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: const Color(0xff525252),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.r))),
                      ),
                    ],
                  ),
                  SizedBox(height: 63.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "00:30",
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 56.h,
                        width: 176.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 24.r,
                              height: 24.r,
                              child: IconButton(
                                visualDensity:
                                    VisualDensity.adaptivePlatformDensity,
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.fast_rewind_rounded,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 56.r,
                              height: 56.r,
                              child: Container(
                                width: 45.67.r,
                                height: 45.67.r,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45.67.r),
                                ),
                                child: SvgPicture.asset(
                                  AssetResources.PAUSE,
                                  height: 45.67.r,
                                  width: 45.67.r,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 24.r,
                              height: 24.r,
                              child: IconButton(
                                visualDensity:
                                    VisualDensity.adaptivePlatformDensity,
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.fast_forward_rounded,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "05:30",
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xffD0D0D0),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(height: 56.h),
                  Center(
                    child: SizedBox(
                      width: 130.w,
                      height: 16.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 16.r,
                            height: 16.r,
                            child: IconButton(
                              visualDensity:
                                  VisualDensity.adaptivePlatformDensity,
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shuffle,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16.r,
                            height: 16.r,
                            child: IconButton(
                              visualDensity:
                                  VisualDensity.adaptivePlatformDensity,
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.music_note,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16.r,
                            height: 16.r,
                            child: IconButton(
                              visualDensity:
                                  VisualDensity.adaptivePlatformDensity,
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.playlist_add_rounded,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
