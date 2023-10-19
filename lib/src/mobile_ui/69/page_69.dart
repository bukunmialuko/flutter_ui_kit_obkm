import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page69 extends StatelessWidget {
  const Page69({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text("Shop"),
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
              height: 6,
            ),
            Wrap(
              spacing: 4,
              runSpacing: 4,
              children: List.generate(
                  10,
                  (index) => index == 0
                      ? Container(
                          width: 194,
                          height: 194,
                          decoration: BoxDecoration(color: Color(0xFFC4C4C4)),
                          child: Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            children: List.generate(
                              4,
                              (index) => Container(
                                width: 95,
                                height: 95,
                                decoration: BoxDecoration(
                                  color: Color(0xFF262626),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: 194,
                          height: 194,
                          decoration: BoxDecoration(color: Color(0xFFC4C4C4)),
                        )),
            )
          ],
        ),
      ),
    );
  }
}
