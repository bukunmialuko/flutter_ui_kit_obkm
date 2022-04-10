import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../navigation/navigation_service.dart';

class Page45 extends StatefulWidget {
  const Page45({Key? key}) : super(key: key);

  @override
  State<Page45> createState() => _Page45State();
}

class _Page45State extends State<Page45> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: 25.w,
            right: 31.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32.h,
              ),
              Text(
                "Europe",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    letterSpacing: -5.sp,
                    fontSize: 96.sp,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Location:",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                "Somewhere fun",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Divider(
                thickness: 1.sp,
                color: Color(0xFFA8A8A8),
              ),
              SizedBox(
                height: 39.h,
              ),
              GestureDetector(
                onTap: () {
                  GetIt.I.get<NavigationService>().back();
                },
                child: SizedBox(
                  height: 254.h,
                  width: double.infinity,
                  // color: Colors.green,
                  child: Image.asset(
                    'assets/png/45/europe.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 39.h,
              ),
              Divider(
                thickness: 1.sp,
                color: Color(0xFFA8A8A8),
              ),
              SizedBox(
                height: 26.h,
              ),
              Text(
                "Europe is the western part of the continent of Eurasia, often thought of as its own continent. It is separated from Asia by the Ural Mountains in Russia and the Bosporus strait in Turkey.\n \nEurope is bordered by water on three sides. On the west is the Atlantic Ocean. To the north is the Arctic Ocean. The Mediterranean Sea separates Southeastern Europe from Africa. On the eastern border of Europe are the Ural River and Ural Mountains.",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
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
