import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_kit_obkm/src/navigation/navigation_service.dart';
import 'package:flutter_ui_kit_obkm/src/res/assets.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            /// Had to adjust this
            height: 340.h + MediaQuery.of(context).viewPadding.top,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.LADY_PG4),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                // SizedBox(height: 16.h),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        GetIt.I.get<NavigationService>().back();
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 27.w, top: 16.h),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).viewPadding.top),
                        child: SvgPicture.asset(
                          Assets.BACK,
                          height: 48.r,
                          width: 48.r,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.only(right: 24.w),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).viewPadding.top),
                      child: SvgPicture.asset(
                        Assets.MENU,
                        height: 48.r,
                        width: 48.r,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 30.h,
                    width: 390.w,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(36.r),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 24.w,
                  bottom: 13.h,
                  child: SvgPicture.asset(
                    Assets.PLAY,
                    height: 48.r,
                    width: 48.r,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: const Color(0xff161616),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Songs",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Text(
                              "56",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 24.sp,
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 57.w),
                        Column(
                          children: [
                            Text(
                              "Followers",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Text(
                              "7556",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 24.sp,
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 57.w),
                        Column(
                          children: [
                            Text(
                              "Following",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Text(
                              "390",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 24.sp,
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                    /// Had to adjust this
                    SizedBox(height: 30.h),
                    Padding(
                      padding: EdgeInsets.only(left: 22.w),
                      child: Text(
                        "Popular",
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Padding(
                      padding: EdgeInsets.only(left: 22.w, right: 2.w),
                      child: SizedBox(
                        height: 158.h,
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          scrollDirection: Axis.horizontal,
                          itemCount: 7,
                          itemBuilder: (c, i) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 130.h,
                                  height: 142.h,
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        child: Container(
                                          width: 130.h,
                                          height: 130.h,
                                          color: const Color(0xffC4C4C4),
                                          child: Center(
                                            child: Container(
                                              // height: 100.h,
                                              constraints: BoxConstraints(
                                                maxHeight: 100.h,
                                                maxWidth: 100.h,
                                              ),
                                              color: const Color(0xff525252),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: SvgPicture.asset(
                                          Assets.PLAY,
                                          height: 24.h,
                                          width: 24.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "Album name",
                                  style: GoogleFonts.workSans(
                                    textStyle: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      height: 1,
                                    ),
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (c, i) {
                            return SizedBox(
                              width: 16.w,
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 27.h),
                    Padding(
                      padding: EdgeInsets.only(left: 22.w),
                      child: Text(
                        "Singles",
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding:
                          EdgeInsets.only(left: 24.w, right: 24.w, top: 16.h),
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: 7,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (c, i) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8.r),
                            child: Container(
                              width: 342.w,
                              height: 100.h,
                              color: const Color(0xff525252),
                              padding: EdgeInsets.only(left: 11.w),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.r),
                                      child: Container(
                                        width: 80.h,
                                        height: 80.h,
                                        // margin: EdgeInsets.only(right: 14.w),
                                        color: const Color(0xffD0D0D0),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 16.w,
                                              vertical: 10.h,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  child: Text(
                                                    "Song title here.",
                                                    style: GoogleFonts.workSans(
                                                      textStyle: TextStyle(
                                                        fontSize: 16.sp,
                                                        color: Colors.white,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                Text(
                                                  "2020",
                                                  style: GoogleFonts.workSans(
                                                    textStyle: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: Colors.white,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        // Spacer(),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 8.w,
                                          ),
                                          child: SvgPicture.asset(
                                            Assets.MORE,
                                            height: 24.w,
                                            width: 24.w,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (c, i) {
                          return SizedBox(height: 24.h);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
