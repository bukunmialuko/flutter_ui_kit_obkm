import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page39 extends StatelessWidget {
  const Page39({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 296.h,
              width: double.infinity,
              child: ColoredBox(
                color: Color(0xffC4C4C4),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
              ),
              child: Column(
                children: [
                  Text(
                    "Power of Oscars keeps Romanian ‘Collective’ tragedy in people’s minds, says director",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp,
                      height: 1.33,
                    ),
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "Written by ",
                          children: [
                            TextSpan(
                              text: "Someone Cool",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                          style: TextStyle(
                            fontSize: 12.sp,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Text(
                        "June 24, 2021",
                        style: TextStyle(
                          fontSize: 12.sp,
                          height: 1.5,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Divider(),
                  SizedBox(
                    height: 28.h,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci neque pulvinar in lacus, quis pulvinar penatibus viverra condimentum. Id vitae malesuada viverra amet. Vitae id velit lorem proin pellentesque sed. Orci elementum facilisis neque placerat laoreet libero at at. Vitae id velit lorem proin pellentesque sed. Orci elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci neque pulvinar in lacus, quis pulvinar penatibus viverra condimentum. Id vitae malesuada viverra amet. Vitae id velit lorem proin pellentesque sed. Orci elementum facilisis neque placerat laoreet libero at at. Vitae id velit lorem proin pellentesque sed. Orci elementum.",
                    style: TextStyle(
                      fontSize: 12.sp,
                      height: 1.83,
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
