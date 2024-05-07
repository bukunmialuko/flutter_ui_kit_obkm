import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Page65 extends StatelessWidget {
  const Page65({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.search,
            size: 36,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 36,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 43),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Hong Kong',
                      style: GoogleFonts.workSans(
                        color: Color(0xFFA8A8A8),
                        fontSize: 18,
                        //
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'HKG',
                      style: GoogleFonts.workSans(
                        color: Colors.black,
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '8:00 am',
                      style: GoogleFonts.workSans(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 81,
                ),
                Column(
                  children: [
                    Text(
                      'Singapore',
                      style: GoogleFonts.workSans(
                        color: Color(0xFFA8A8A8),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'SIN',
                      style: GoogleFonts.workSans(
                        color: Colors.black,
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '1:00 pm',
                      style: GoogleFonts.workSans(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 49,
            ),
            Stack(
              children: [
                SizedBox(
                  width: width,
                  height: 450,
                ),
                Positioned(
                  right: 10,
                  child: Container(
                    width: 461,
                    height: 450,
                    decoration: BoxDecoration(
                      color: Color(0x19DA1E28),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: 67,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John S. Doe',
                          style: GoogleFonts.workSans(
                            color: Colors.black,
                            fontSize: 36,

                            fontWeight: FontWeight.w600,
                            // height: 0.03,
                            letterSpacing: -1.08,
                          ),
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 4),
                                decoration: BoxDecoration(
                                  border: BorderDirectional(
                                    top: BorderSide(
                                      width: 1,
                                      // strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFD0D0D0),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Terminal',
                                      style: GoogleFonts.workSans(
                                        color: Color(0xFF262626),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'A',
                                      style: GoogleFonts.workSans(
                                        color: Color(0xFF262626),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        height: 0.04,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 4),
                                decoration: BoxDecoration(
                                  border: BorderDirectional(
                                    top: BorderSide(
                                      width: 1,
                                      // strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFD0D0D0),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Platform',
                                      style: GoogleFonts.workSans(
                                        color: Color(0xFF262626),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      '21',
                                      style: GoogleFonts.workSans(
                                        color: Color(0xFF262626),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        height: 0.04,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 4),
                                decoration: BoxDecoration(
                                  border: BorderDirectional(
                                    top: BorderSide(
                                      width: 1,
                                      // strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFD0D0D0),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Date',
                                      style: GoogleFonts.workSans(
                                        color: Color(0xFF262626),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Jun 6',
                                      style: GoogleFonts.workSans(
                                        color: Color(0xFF262626),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        height: 0.04,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 4),
                                decoration: BoxDecoration(
                                  border: BorderDirectional(
                                    top: BorderSide(
                                      width: 1,
                                      // strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFD0D0D0),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ticket No.',
                                      style: GoogleFonts.workSans(
                                        color: Color(0xFF262626),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      '95784610254',
                                      style: GoogleFonts.workSans(
                                        color: Color(0xFF262626),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        height: 0.04,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 4),
                                decoration: BoxDecoration(
                                  border: BorderDirectional(
                                    top: BorderSide(
                                      width: 1,
                                      // strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFD0D0D0),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Seat',
                                      style: GoogleFonts.workSans(
                                        color: Color(0xFF262626),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      '21C',
                                      style: GoogleFonts.workSans(
                                        color: Color(0xFF262626),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        height: 0.04,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 4),
                                decoration: BoxDecoration(
                                  border: BorderDirectional(
                                    top: BorderSide(
                                      width: 1,
                                      // strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFD0D0D0),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Class',
                                      style: GoogleFonts.workSans(
                                        color: Color(0xFF262626),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Economy',
                                      style: GoogleFonts.workSans(
                                        color: Color(0xFF262626),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        height: 0.04,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: 160,
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFDA1E28)),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                'Show bar code',
                style: GoogleFonts.workSans(
                  color: Color(0xFFDA1E28),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
