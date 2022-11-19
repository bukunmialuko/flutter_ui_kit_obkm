import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Page16 extends StatelessWidget {
  const Page16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 104.h,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Text(
                  'Enter your verification code',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Enter the 4-digit code we have sent to',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                Text(
                  '+1 206-312-9956',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Container(
                  height: 70.h,
                  width: size.width,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  decoration: BoxDecoration(
                    // color: Colors.purple,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      VerificationTextField(),
                      VerificationTextField(),
                      VerificationTextField(),
                      VerificationTextField(),
                    ],
                  ),
                ),
                SizedBox(height: 41.h),
                Text(
                  'Didn’t receive the code?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  '+1 206-312-9956',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            // color: Colors.blue,
            height: 103.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.pop();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF161616),
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    fixedSize: Size(325.w, 50.h),
                  ),
                  child: Text(
                    'Send code',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 88.h,
          ),
        ],
      ),
    );
  }
}

class VerificationTextField extends StatelessWidget {
  const VerificationTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset.zero,
          ),
        ],
      ),
      child: TextField(
        textAlign: TextAlign.center,
        maxLength: 1,
        style: TextStyle(
          fontSize: 28.sp,
        ),
        decoration: InputDecoration(
          counterText: "",
        ),
      ),
    );
  }
}
