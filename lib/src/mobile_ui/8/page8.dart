import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_kit_obkm/src/res/colors.dart';

class Page8 extends StatefulWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  _Page8State createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 18.h, left: 18.h, right: 18.h, bottom: 18.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [Text("data"), Icon(Icons.visibility)],
                      ),
                      Text("Usd 123")
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Container(
                      width: 56.r,
                      height: 56.r,
                      color: AppColors.grey,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
