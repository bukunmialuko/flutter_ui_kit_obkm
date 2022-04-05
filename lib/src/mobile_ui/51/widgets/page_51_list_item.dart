import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/colors.dart';

class Page51ListItem extends StatelessWidget {
  const Page51ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 159.w,
            height: 220.h,
            color: Color(0xffC4C4C4),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            "Model name",
            style: GoogleFonts.workSans(
              textStyle: TextStyle(
                fontSize: 16.sp,
                color: AppColors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
            "Location",
            style: GoogleFonts.workSans(
              textStyle: TextStyle(
                fontSize: 14.sp,
                color: AppColors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
