import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page46 extends StatelessWidget {
  const Page46({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 25.0.w,
              right: 25.0.w,
              top: 10.h,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location:",
                          style: TextStyle(
                            fontFamily: GoogleFonts.workSans().fontFamily,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            height: 1.1.h,
                          ),
                        ),
                        Text(
                          "Somewhere fun",
                          style: TextStyle(
                            fontFamily: GoogleFonts.workSans().fontFamily,
                            fontSize: 12.sp,
                            height: 1.14.h,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 26.h,
                ),
                Text(
                  "At first you didn’t know me. I was a shape moving rapidly, nervous at the edge of your vision. A flat, high voice, dark slash of hair across my cheekbone.",
                  style: TextStyle(
                    fontFamily: GoogleFonts.workSans().fontFamily,
                    fontSize: 38.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.09.h,
                  ),
                ),
                SizedBox(
                  height: 72.h,
                ),
                Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Random",
                        style: TextStyle(
                          fontFamily: GoogleFonts.workSans().fontFamily,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          height: 1.35.h,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          7,
                          (index) => Text(
                            "Random",
                            style: TextStyle(
                              fontFamily: GoogleFonts.workSans().fontFamily,
                              fontSize: 24.sp,
                              height: 1.07.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
