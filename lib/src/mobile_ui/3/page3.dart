import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_kit_obkm/src/res/assets.dart';
import 'package:flutter_ui_kit_obkm/src/navigation/navigation_service.dart';
import 'package:get_it/get_it.dart';
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

  double currentPageValue = 0;

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
            SizedBox(
              height: 419.h,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Sally's music",
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          height: 1,
                        ),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Center(
                    child: Text(
                      "${currentPageValue.toInt() + 1} of $maximumPage",
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 11.h),
                  // Todo: Page 3, improve widget scaling on swipe
                  SizedBox(
                    height: 340.h,
                    child: PageView.builder(
                      controller: _controller,
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      itemBuilder: (context, position) {
                        if (position == 0 && currentPageValue == 0) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 8.w),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.r),
                              child: Container(
                                width: 267.r,
                                height: 340.h,
                                color: const Color(0xffA8A8A8),
                              ),
                            ),
                          );
                        } else if (position == currentPageValue.floor()) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 8.w),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.r),
                              child: Container(
                                width: 267.r,
                                height: 340.h,
                                color: const Color(0xffA8A8A8),
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
                                height: 340.h,
                                color: const Color(0xffAD0D0D),
                              ),
                            ),
                          );
                        } else {
                          return Transform.scale(
                            scale: 0.9,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.r),
                              child: Container(
                                width: 267.r,
                                height: 340.h,
                                color: const Color(0xffAD0D0D),
                              ),
                            ),
                          );
                        }
                      },
                      itemCount: maximumPage, // Can be null
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
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
                      SizedBox(height: 28.h),
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
                      const Spacer(flex: 1),
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
                                    onPressed: () {
                                      GetIt.I.get<NavigationService>().back();
                                    },
                                    icon: const Icon(
                                      Icons.fast_rewind_rounded,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SvgPicture.asset(
                                  Assets.PAUSE,
                                  height: 45.67.r,
                                  width: 45.67.r,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(
                                  width: 24.r,
                                  height: 24.r,
                                  child: IconButton(
                                    visualDensity:
                                        VisualDensity.adaptivePlatformDensity,
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      GetIt.I.get<NavigationService>().back();
                                    },
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
                      const Spacer(flex: 1),
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
                                child: const Icon(Icons.shuffle),
                              ),
                              SizedBox(
                                width: 16.r,
                                height: 16.r,
                                child: const Icon(Icons.music_note),
                              ),
                              SizedBox(
                                width: 16.r,
                                height: 16.r,
                                child: const Icon(Icons.playlist_play_sharp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
