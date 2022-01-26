import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/res/font_family.dart';
import 'package:google_fonts/google_fonts.dart';

class WebPage7 extends StatelessWidget {
  const WebPage7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 1024.h,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage('assets/png/flower.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      'AIRE',
                      style: TextStyle(
                        fontSize: 72,
                        color: Color(0xFF8B8B8B),
                        fontFamily: FontFamily.abolition,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 1024.h,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(top: 74.h, left: 98.w, right: 118.w),
                    child: SizedBox(
                      width: 504.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'SHOP',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'ABOUT',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'INNOVATION',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'CART',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 312.h),
                  SizedBox(
                    width: 503.w,
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'ANTI ',
                            style: TextStyle(
                              fontSize: 72,
                              fontFamily: GoogleFonts.gfsDidot().fontFamily,
                            ),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'DESIGN',
                                style: TextStyle(
                                  fontSize: 72,
                                  fontFamily: FontFamily.proximaNova,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 36.h,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Libero in mauris est condimentum suscipit. Viverra tincidunt amet aliquet massa rhoncus egestas eget id turpis. Augue nunc. ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: FontFamily.proximaNova,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 299.h),
                  Container(
                    width: 468.w,
                    height: 58.h,
                    color: Color(0xFFD5DACC),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'This website uses cookies. ',
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: FontFamily.proximaNova,
                              ),
                            ),
                            Text(
                              'Learn more',
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: FontFamily.proximaNova,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 60.w,
                        ),
                        Text(
                          'ACCEPT',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: FontFamily.proximaNova,
                          ),
                        ),
                      ],
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
