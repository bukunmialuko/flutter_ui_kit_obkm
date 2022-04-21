import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_kit_obkm/src/res/assets.dart';
import 'package:flutter_ui_kit_obkm/src/navigation/navigation_service.dart';
import 'package:flutter_ui_kit_obkm/src/res/colors.dart';
import 'package:flutter_ui_kit_obkm/src/res/styles.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class Page7 extends StatefulWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  List<String> categories = ["House", "Hotels", "Apartment"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24.w, top: 18.h, bottom: 18.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        GetIt.I.get<NavigationService>().back();
                      },
                      child: Container(
                        width: 60.r,
                        height: 60.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45.r),
                          color: AppColors.greyC4,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "John Doe",
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        GetIt.I.get<NavigationService>().back();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 24.w),
                        child: SvgPicture.asset(
                          Assets.PG7_NOTIFICATION,
                          height: 36.r,
                          width: 36.r,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find your place to stay",
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    TextFormField(
                      readOnly: true, //false
                      autofocus: false,
                      // style: ,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: const Icon(Icons.search, color: Colors.black),
                        ),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: 20.w, maxWidth: 35.w),
                        hintText: "Search...",
                        // hintStyle: textFieldPlaceholderTextStyle(context),
                        isDense: true,
                        filled: true,
                        fillColor: AppColors.greyC4,
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
                      onTap: () {
                        GetIt.I.get<NavigationService>().back();
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 45.h),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
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
                          "See all",
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
                    SizedBox(height: 30.h),
                  ],
                ),
              ),
              SizedBox(
                height: 140.h,
                child: ListView.separated(
                  padding: EdgeInsets.only(left: 24.w),
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (c, i) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Container(
                            width: 109.w,
                            height: 140.h,
                            color: AppColors.greyC4,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 39.h,
                                    color: const Color(0xff525252),
                                    child: Center(
                                      child: Text(
                                        categories[i],
                                        maxLines: 2,
                                        style: GoogleFonts.workSans(
                                          textStyle: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.white,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 17.w,
                    );
                  },
                ),
              ),
              SizedBox(height: 52.h),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular",
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
                          "See all",
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
                    SizedBox(height: 17.h),
                  ],
                ),
              ),
              SizedBox(
                height: 165.h,
                child: ListView.separated(
                  padding: EdgeInsets.only(left: 24.w),
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (c, i) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Container(
                            width: 244.w,
                            height: 165.h,
                            color: AppColors.greyC4,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 15.w, bottom: 12.w),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Tai Po Beach",
                                          maxLines: 1,
                                          style: GoogleFonts.workSans(
                                            textStyle: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.black,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Icon(Icons.edit_location),
                                            SizedBox(width: 4.w),

                                            /// Todo : This should be tested for overflow
                                            Text(
                                              "Kam Ling, Hong Kong",
                                              maxLines: 1,
                                              style: GoogleFonts.workSans(
                                                textStyle: TextStyle(
                                                  fontSize: 10.sp,
                                                  color: Colors.black,
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
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
        ),
      ),
      bottomNavigationBar: Container(
        height: 90.h,
        // color: Colors.white,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xffE0E0E0))),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 40.w, right: 51.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      Assets.PG7_HOME,
                      height: 24.r,
                      width: 24.r,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      "Home",
                      maxLines: 1,
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
                SvgPicture.asset(
                  Assets.PG7_CONTROL_CAMERA,
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
                SvgPicture.asset(
                  Assets.PG7_LOCATION_CITY,
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
                SvgPicture.asset(
                  Assets.PG7_LOCAL_CONVEINET_STORE,
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
