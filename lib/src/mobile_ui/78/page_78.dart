import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final options = ['Self', 'Mental Health', 'Accessibility', 'Film'];

class Page78 extends StatelessWidget {
  const Page78({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text("Following"),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w600,
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: 13,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 48.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: options.length + 1,
                separatorBuilder: (context, index) => SizedBox(
                  width: 8.h,
                ),
                itemBuilder: (context, index) => index == 0
                    ? SizedBox.shrink()
                    : FilterChip(
                        label: Text(
                          options[index - 1],
                          style: GoogleFonts.workSans(
                            color: Color(0xFF262626),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
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
                            borderRadius: BorderRadius.circular(50)),
                        showCheckmark: false,
                        selectedColor: Colors.white,
                        selectedShadowColor: Color(0xff333333),
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 8.h),
                        // elevation: 2,
                      ),
              ),
            ),
            23.verticalSpace,
            SizedBox(
              height: 120.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => index == 0
                    ? SizedBox.shrink()
                    : SizedBox(
                        width: 81.w,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 75.w,
                                  height: 75.h,
                                  margin: EdgeInsets.only(right: 6.w, top: 6.h),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFC4C4C4),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(4.w),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                        border:
                                            Border.all(color: Colors.white)),
                                    child: Text(
                                      '9+',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontFamily: 'Work Sans',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            SizedBox(
                              width: 60.w,
                              child: Text(
                                'UX Collective',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Work Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                separatorBuilder: (context, index) => SizedBox(
                  width: 16.w,
                ),
                itemCount: 6,
              ),
            ),
            26.verticalSpace,
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownButton(
                    items: [DropdownMenuItem(child: Text("TOP STORIES"))],
                    onChanged: (value) {},
                    elevation: 0,
                    underline: SizedBox.shrink(),
                    iconEnabledColor: Color(0xff161616),
                    iconSize: 24.w,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 36.w,
                        height: 36.w,
                        decoration: ShapeDecoration(
                          color: Color(0xFFC4C4C4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                      8.horizontalSpace,
                      Text.rich(
                        TextSpan(
                          text: 'Oscar Sun',
                          children: [
                            TextSpan(
                              text: ' in ',
                              style: TextStyle(
                                color: Color(0xFFA8A8A8),
                                fontSize: 12.sp,
                                fontFamily: 'Work Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "UX collective ·  Aug 28",
                            )
                          ],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  22.verticalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Living in a lockdown night ...',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.sp,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -1,
                        ),
                      ),
                      8.verticalSpace,
                      Text(
                        'Maria is one of the large number of asylum seekers who live their lives - in many cases for years. ',
                        style: TextStyle(
                          color: Color(0xFFA8A8A8),
                          fontSize: 14.sp,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  22.verticalSpace,
                  SizedBox(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sapien erat bibendum orci nisl, phasellus sed. Aliquet in viverra id quis facilisis pellentesque scelerisque suspendisse. At amet, elit magna at magnis at porta. In mi ac sed tincidunt vitae diam. Lacinia enim posuere id nunc, odio lacinia. Ante vitae faucibus lectus tincidunt aliquam nunc, ut turpis. Faucibus eget risus interdum bibendum enim est. Lacus, aliquam enim etiam sit. Volutpat nibh in bibendum ut elit mollis.',
                      style: GoogleFonts.lora(
                        color: Color(0xFF262626),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
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
