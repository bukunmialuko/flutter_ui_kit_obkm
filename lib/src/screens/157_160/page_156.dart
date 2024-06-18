import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page156To160 extends StatefulWidget {
  const Page156To160({Key? key}) : super(key: key);

  @override
  State<Page156To160> createState() => _Page156To160State();
}

class _Page156To160State extends State<Page156To160> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            LinearProgressIndicator(
              backgroundColor: Color(0xffD0D0D0),
              color: Color(0xffAAB6B3),
              value: 0.3,
              minHeight: 5.h,
            ),
            // SingleChildScrollView(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "What's your first name?",
                    style: GoogleFonts.workSans(
                      fontSize: 24.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  146.horizontalSpace,
                  TextField(
                    style: GoogleFonts.workSans(
                      fontSize: 64.sp,
                      fontWeight: FontWeight.w200,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "name",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
