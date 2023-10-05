import 'package:flutter/material.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class Page53 extends StatelessWidget {
  const Page53({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Assets.svg.m53.biker.svg(
            width: 36,
            height: 36,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Now",
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              "Current location",
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Color(0xFF333333),
              ),
            ),
          ],
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(
              right: 8,
            ),
            decoration: BoxDecoration(
              color: Color(0xffC4C4C4),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  FilterChip(
                    label: Text(
                      "Delivery",
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF333333),
                      ),
                    ),
                    selected: true,
                    onSelected: (value) {},
                    showCheckmark: false,
                    selectedColor: Colors.white,
                    selectedShadowColor: Color(0xff333333),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    elevation: 2,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  FilterChip(
                    label: Text(
                      "Pick Up",
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF333333),
                      ),
                    ),
                    selected: false,
                    onSelected: (value) {},
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    showCheckmark: false,
                    selectedColor: Colors.white,
                    selectedShadowColor: Color(0xff333333),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    // elevation: 2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.only(
                        left: 17.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Padding(
                            padding: const EdgeInsets.only(
                              left: 0.0,
                            ),
                            child: Icon(Icons.search),
                          ),
                          iconColor: Colors.black,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Search...",
                          hintStyle: TextStyle(
                            height: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                  (index) => Container(
                    width: 90,
                    height: 90,
                    margin: EdgeInsets.only(
                      right: 16,
                      left: index == 0 ? 8 : 0,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 9, vertical: 6),
                    decoration: ShapeDecoration(
                      color: Color(0xFFD0D0D0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Category #${index + 1}",
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xFF333333),
                      ),
                    ),
                  ),
                ).toList(),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 4),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  2,
                  (index) => Container(
                    width: 342,
                    height: 140,
                    margin: EdgeInsets.only(
                      right: 24,
                      left: index == 0 ? 8 : 0,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F4F4),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Covid-19 Delivery Notice',
                          style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xFF333333),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: 277,
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In proin tellus, commodo sed. Hac parturient vivamus feugiat purus velit elementum. A sapien urna risus quis sagittis id aliquam urna, nascetur. ',
                            style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xFF333333),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ).toList(),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Up to 25% off",
                    style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xFF333333),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 281,
                    margin: EdgeInsets.only(
                      right: 19,
                      left: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          // height: 182,
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 25),
                                child: Assets.png.m53.img1.image(
                                  fit: BoxFit.cover,
                                  height: 165,
                                  width: 281,
                                ),
                              ),
                              Positioned(
                                bottom: 4,
                                right: 20,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 24,
                                    vertical: 6,
                                  ),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "30-50",
                                        style: GoogleFonts.workSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xFF333333),
                                        ),
                                      ),
                                      Text("min"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Restaurant Name",
                              style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF333333),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      "4.5 Excellent (400+) ・ Chicken ・ Hong Kong ・ Chinese ・ Asian",
                                      style: GoogleFonts.workSans(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xFF333333),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "2 km away ・ \$5.00 delivery",
                              style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF333333),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 281,
                    margin: EdgeInsets.only(
                      right: 19,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          // height: 182,
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 25),
                                child: Assets.png.m53.img2.image(
                                  fit: BoxFit.cover,
                                  height: 165,
                                  width: 281,
                                ),
                              ),
                              Positioned(
                                bottom: 4,
                                right: 20,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 24,
                                    vertical: 6,
                                  ),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "30-50",
                                        style: GoogleFonts.workSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xFF333333),
                                        ),
                                      ),
                                      Text("min"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Restaurant Name",
                              style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF333333),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      "4.5 Excellent (400+) ・ Chicken ・ Hong Kong ・ Chinese ・ Asian",
                                      style: GoogleFonts.workSans(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xFF333333),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "2 km away ・ \$5.00 delivery",
                              style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF333333),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
