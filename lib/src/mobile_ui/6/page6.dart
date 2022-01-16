import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_kit_obkm/res/asset_images.dart';
import 'package:flutter_ui_kit_obkm/src/res/colors.dart';
import 'package:flutter_ui_kit_obkm/src/res/styles.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/bottom_sheet.dart';

class Page6 extends StatefulWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  List<Mood> moods = [
    Mood(name: "Happy #1", emoji: "😆"),
    Mood(name: "Happy #2", emoji: "😆"),
    Mood(name: "Happy #3", emoji: "😆"),
    Mood(name: "Happy #4", emoji: "😆"),
    Mood(name: "Happy #5", emoji: "😆")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 39.h, bottom: 25.h, left: 24.w, right: 25.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi John",
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
                        "Jun 24th, 2021",
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.notifications))
                ],
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
                  prefixIconConstraints:
                      BoxConstraints(maxHeight: 20.w, maxWidth: 35.w),
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
            Container(
              padding: EdgeInsets.only(left: 24.w, right: 25.w),
              height: 123.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How do you feel today?",
                    style: GoogleFonts.workSans(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 74.h,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      itemCount: moods.length,
                      itemBuilder: (c, i) {
                        return Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.r),
                              child: Container(
                                width: 50.h,
                                height: 50.h,
                                color: AppColors.grey,
                                child: Center(
                                  child: Text(
                                    moods[i].emoji,
                                    style: TextStyle(fontSize: 28.sp),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              moods[i].name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
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
            const Expanded(
              child: BottomSheetWidget(
                data: ["", "", "", "", "", ""],
              ),
            )
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

class Mood {
  final String name;
  final String emoji;

  Mood({required this.name, required this.emoji});
}
