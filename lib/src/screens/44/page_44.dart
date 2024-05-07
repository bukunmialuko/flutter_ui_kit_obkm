import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Page44 extends StatefulWidget {
  const Page44({Key? key}) : super(key: key);

  @override
  State<Page44> createState() => _Page44State();
}

class _Page44State extends State<Page44> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 86.h,
              ),

              /// Rotate widget
              Center(
                child: RotatedBox(
                  quarterTurns: 3,
                  child: GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Row(
                      children: [
                        Text(
                          'LOREM ',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 90.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        Text(
                          'IPSUM ',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 90.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
