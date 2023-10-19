import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page70 extends StatelessWidget {
  const Page70({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text("Video Reel"),
        titleTextStyle: GoogleFonts.workSans(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                    gapPadding: 7,
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic),
                  fillColor: Color(0x1E767680),
                  filled: true,
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Color(0x993C3C43),
                    fontSize: 17,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.41,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 7.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 48,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 12),
                scrollDirection: Axis.horizontal,
                children: [
                  FilterChip(
                    label: Text(
                      "Shop",
                      style: GoogleFonts.workSans(
                        color: Color(0xFF262626),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.41,
                      ),
                    ),
                    selected: false,
                    onSelected: (value) {},
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    showCheckmark: false,
                    selectedColor: Colors.white,
                    selectedShadowColor: Color(0xff333333),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    // elevation: 2,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  FilterChip(
                    label: Text(
                      "Magazines",
                      style: GoogleFonts.workSans(
                        color: Color(0xFF262626),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.41,
                      ),
                    ),
                    selected: false,
                    onSelected: (value) {},
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    showCheckmark: false,
                    selectedColor: Colors.white,
                    selectedShadowColor: Color(0xff333333),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    // elevation: 2,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  FilterChip(
                    label: Text(
                      "Sports",
                      style: GoogleFonts.workSans(
                        color: Color(0xFF262626),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.41,
                      ),
                    ),
                    selected: false,
                    onSelected: (value) {},
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    showCheckmark: false,
                    selectedColor: Colors.white,
                    selectedShadowColor: Color(0xff333333),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    // elevation: 2,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  FilterChip(
                    label: Text(
                      "Nutrition",
                      style: GoogleFonts.workSans(
                        color: Color(0xFF262626),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.41,
                      ),
                    ),
                    selected: false,
                    onSelected: (value) {},
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    showCheckmark: false,
                    selectedColor: Colors.white,
                    selectedShadowColor: Color(0xff333333),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    // elevation: 2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 30,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF8A3FFC),
                              Color(0xFFFF000F),
                            ])),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'LIVE',
                        style: GoogleFonts.workSans(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Now',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 162,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  width: 110.w,
                  height: 155.h,
                  margin: EdgeInsets.only(left: index == 0 ? 8 : 0, right: 12),
                  padding: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                  decoration: ShapeDecoration(
                    color: Color(0xFFC4C4C4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Author name',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.12,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.remove_red_eye),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '956',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.sp,
                              fontFamily: 'Work Sans',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.10,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 12,
              runSpacing: 17,
              children: List.generate(
                4,
                (index) => Container(
                  width: 178.w,
                  height: 220.h,
                  padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 5.h),
                  decoration: ShapeDecoration(
                    color: Color(0xFFC4C4C4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Author name',
                        style: GoogleFonts.workSans(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.12,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.remove_red_eye),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '95k views',
                            style: GoogleFonts.workSans(
                              color: Colors.black,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.10,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
