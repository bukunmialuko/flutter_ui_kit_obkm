import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page80 extends StatelessWidget {
  Page80({super.key});

  final options = [
    'Psychology',
    'Productivity',
    'Design',
    'Film',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text("Explore"),
        titleTextStyle: GoogleFonts.workSans(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_none_outlined))
        ],
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
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => FilterChip(
                  label: Text(
                    options[index],
                    style: GoogleFonts.workSans(
                      color: Color(0xFF262626),
                      fontSize: 14.sp,
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
                      borderRadius: BorderRadius.circular(50.r)),
                  showCheckmark: false,
                  selectedColor: Colors.white,
                  selectedShadowColor: Color(0xff333333),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  // elevation: 2,
                ),
                itemCount: 4,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  width: 8.w,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 24),
              child: Divider(
                color: Color(0xFFD0D0D0),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                children: [
                  Icon(Icons.find_in_page),
                  Text(
                    'RECOMMENDED FOR YOU',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            ...List.generate(
              4,
              (index) => Container(
                padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 12.w),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    width: 1.w,
                    color: Color(0xFFD0D0D0),
                  ),
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 24.w,
                                height: 24.w,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFA8A8A8),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 2.w, color: Color(0xFF525252)),
                                  ),
                                ),
                              ),
                              8.horizontalSpace,
                              Text(
                                'Author Name',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Work Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          4.verticalSpace,
                          Text(
                            'How to use design thinking in your projects',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontFamily: 'Work Sans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          8.verticalSpace,
                          Text(
                            'May 20 · 5 min read',
                            style: TextStyle(
                              color: Color(0xFFA8A8A8),
                              fontSize: 12.sp,
                              fontFamily: 'Work Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                    8.horizontalSpace,
                    Container(
                      width: 80.w,
                      height: 80.w,
                      decoration: BoxDecoration(color: Color(0xFF525252)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
