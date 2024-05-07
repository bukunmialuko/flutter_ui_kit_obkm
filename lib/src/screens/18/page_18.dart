import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Page18 extends StatelessWidget {
  const Page18({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: size.width,
            height: (size.height / 2.4).h,
            decoration: BoxDecoration(
              color: Colors.purple,
              image: DecorationImage(
                image: Assets.png.thankYou.image().image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Assets.svg.m9.eyeTube.svg(width: 129.w)),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Thank you for booking!',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Convallis vestibulum augue massa sed aenean.',
                  style: TextStyle(
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                Text(
                  'Happy invoicing!',
                  style: TextStyle(
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                Text(
                  'Co-designer at eyetubee.com',
                  style: TextStyle(
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Divider(
                  thickness: 1.sp,
                  color: Color(0xFFA8A8A8),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'FOLLOW US ON',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Row(
                    children: [
                      Assets.svg.m18.facebook.svg(
                        height: 22.r,
                        width: 22.r,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Assets.svg.m18.instagram.svg(
                        height: 22.r,
                        width: 22.r,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Assets.svg.m18.twitter.svg(
                        height: 22.r,
                        width: 22.r,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
