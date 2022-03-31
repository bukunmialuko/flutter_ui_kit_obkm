import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/21/model/pg_21_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Pg21ListItem extends StatelessWidget {
  final int index;
  final Pg21Model model;
  const Pg21ListItem({Key? key, required this.index, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          NumberFormat("00").format(index),
          style: GoogleFonts.workSans(
            textStyle: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          width: 24.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.title,
              style: GoogleFonts.workSans(
                textStyle: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  height: 1.37,
                ),
              ),
            ),
            Text(
              model.duration,
              style: GoogleFonts.workSans(
                textStyle: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xffA8A8A8),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  height: 1.37,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
