import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_kit_obkm/res/asset_images.dart';
import 'package:flutter_ui_kit_obkm/src/res/colors.dart';
import 'package:flutter_ui_kit_obkm/src/res/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class Page7 extends StatefulWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 18.h, left: 18.h, right: 18.h, bottom: 18.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(width: 18.h, height: 18.h),
                  Text("data"),
                  Spacer(),
                  SvgPicture.asset(
                    AssetResources.PG6_MOTION_PHOTOS_PAUSE,
                    height: 24.r,
                    width: 24.r,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "data",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 25.w, bottom: 31.h),
                  child: TextFormField(
                    readOnly: true, //false
                    autofocus: false,
                    // style: ,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: const Icon(Icons.search, color: Colors.black),
                      ),
                      prefixIconConstraints: BoxConstraints(maxHeight: 20.w, maxWidth: 35.w),
                      hintText: "Search...",
                      // hintStyle: textFieldPlaceholderTextStyle(context),
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.grey,
                      focusedBorder: AppStyles.focusedTransparentBorder,
                      disabledBorder: AppStyles.focusedTransparentBorder,
                      enabledBorder: AppStyles.focusedTransparentBorder,
                      errorBorder: AppStyles.focusedTransparentBorder,
                      focusedErrorBorder: AppStyles.focusedTransparentBorder,
                      errorStyle: errorTextStyle(context),
                    ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    onSaved: (val) {},
                    onEditingComplete: () {},
                    onChanged: (val) {},
                    // validator: (val) {},
                    onTap: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      "data",
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      "data",
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 74.h,
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (c, i) {
                      return Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.r),
                            child: Container(
                              width: 100.h,
                              height: 100.h,
                              color: AppColors.grey,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 50.h,
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                  Positioned(child: Text("data"))
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 42.w,
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      "data",
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      "data",
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 74.h,
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (c, i) {
                      return Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.r),
                            child: Container(
                              width: 100.h,
                              height: 100.h,
                              color: AppColors.grey,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 50.h,
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                  Positioned(child: Text("data"))
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 42.w,
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90.h,
        color: const Color(0xffE0E0E0),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 54.w, right: 54.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  AssetResources.PG6_MOTION_PHOTOS_PAUSE,
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
                SvgPicture.asset(
                  AssetResources.PG6_CAST_CONNECTED,
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
                SvgPicture.asset(
                  AssetResources.PG6_DEBUG,
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
                SvgPicture.asset(
                  AssetResources.PG6_CONTACT,
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
