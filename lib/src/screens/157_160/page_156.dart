import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page156To160 extends StatefulWidget {
  const Page156To160({Key? key}) : super(key: key);

  @override
  State<Page156To160> createState() => _Page156To160State();
}

class _Page156To160State extends State<Page156To160> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 5.h,
              padding: EdgeInsets.symmetric(horizontal: 1.w),
              decoration: BoxDecoration(
                color: Color(0xffD0D0D0),
              ),
              child: Row(
                children: [
                  Container(color: Color(0xffAAB6B3), width: (MediaQuery.of(context).size.width * 0.5) - 2.w),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
