import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';
import 'package:flutter_ui_kit_obkm/gen/fonts.gen.dart';
import 'package:go_router/go_router.dart';

var _page175List = [
  Assets.png.m175.img1.path,
  Assets.png.m175.img2.path,
  Assets.png.m175.img3.path,
  Assets.png.m175.img4.path
];

class Page175 extends StatelessWidget {
  const Page175({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: Platform.isIOS ? 63.h : 83.h,
        centerTitle: true,
        titleSpacing: 8.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Center(
              child: Assets.svg.m175.keyboardArrowLeft.svg(
                width: 24.w,
                height: 24.w,
              ),
            ),
          ),
        ),
        title: Text(
          'Sportswear Premium Esse...',
          style: TextStyle(
            fontSize: 15.sp,
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontFamily: FontFamily.proximaNova,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Padding(
              padding: EdgeInsets.only(right: 12.w),
              child: Assets.svg.m175.keyboardArrowLeft.svg(
                width: 24.w,
                height: 24.w,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: Assets.svg.m175.shoppingBag.svg(
              width: 24.w,
              height: 24.w,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 8.w),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.png.m175.img1.image().image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 7.w, top: 7.h),
              height: 150.w,
              child: ListView.separated(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150.w,
                    height: 150.w,
                    padding: EdgeInsets.only(right: 8.w),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(_page175List[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 7.w,
                  );
                },
                itemCount: _page175List.length,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 12.w, top: 8.h),
              padding: EdgeInsets.only(top: 12.w, bottom: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Men’s Sweater',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamily.proximaNova,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Comfy Sportswear Premium',
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.proximaNova,
                    ),
                    textAlign: TextAlign.center,
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
