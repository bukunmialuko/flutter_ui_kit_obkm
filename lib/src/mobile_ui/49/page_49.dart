import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_kit_obkm/src/res/colors.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../navigation/navigation_service.dart';

class Page49 extends StatelessWidget {
  const Page49({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/png/52/model.jpeg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      GetIt.I.get<NavigationService>().back();
                    },
                    icon: Icon(Icons.more_vert),
                  ),
                ],
              ),
              SizedBox(
                height: 60.h,
              ),
              // ListView.separated(
              //   itemCount: 3,
              //   shrinkWrap: true,
              //   padding: EdgeInsets.symmetric(horizontal: 20.w),
              //   separatorBuilder: (context, index) {
              //     return SizedBox(height: 35.h);
              //   },
              //   itemBuilder: (context, index) {
              //     return Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.center,
              //           children: [
              //             Icon(
              //               Icons.message,
              //               color: AppColors.white,
              //             ),
              //             SizedBox(height: 5.h),
              //             Text(
              //               '12',
              //               textAlign: TextAlign.center,
              //               style: TextStyle(
              //                 color: AppColors.white,
              //                 fontFamily: GoogleFonts.workSans().fontFamily,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(30.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            width: 343.w,
            height: 120.h,
            padding: EdgeInsets.only(
                left: 23.w, right: 30.w, top: 20.h, bottom: 15.h),
            decoration: BoxDecoration(
              color: Color(0xFFF4F4F4).withOpacity(0.8),
              borderRadius: BorderRadius.circular(32.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Gucci",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Long Trench Coat",
                          style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 24.sp,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Text(
                          "875 - 4788/751",
                          style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 25.r,
                      backgroundColor: Color(0xFFA0A9B1),
                      foregroundColor: AppColors.black,
                      child: Icon(
                        Icons.shopping_cart,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
