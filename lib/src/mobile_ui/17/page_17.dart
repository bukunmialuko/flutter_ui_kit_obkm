import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Page17 extends StatefulWidget {
  const Page17({Key? key}) : super(key: key);

  @override
  _Page17State createState() => _Page17State();
}

class _Page17State extends State<Page17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 104.h),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Text(
                  'Account created!',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Convallis vestibulum augue massa sed aenean.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 72.h),
          Container(
            height: 257.h,
            // color: Colors.green,
            padding: EdgeInsets.only(left: 50.w, right: 50.w),

            child: Image.asset('assets/png/todo.png'),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ElevatedButton(
              onPressed: () {
                context.pop();
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF161616),
                elevation: 0,
                shadowColor: Colors.transparent,
                fixedSize: Size(342, 54),
              ),
              child: Text(
                'Continue',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 88.h),
        ],
      ),
    );
  }
}
