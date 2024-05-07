import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';

class Page100 extends StatelessWidget {
  const Page100({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: false,
        title: Text("Program"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        children: [
          15.verticalSpace,
          ProgramCard(
            image: Assets.png.m100.womanWithDumbbell.provider(),
          ),
          15.verticalSpace,
          ProgramCard(
            image: Assets.png.m100.womanHanging.provider(),
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}

class ProgramCard extends StatelessWidget {
  final ImageProvider image;

  const ProgramCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 461.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: image,
        ),
      ),
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 17.h),
            child: Text(
              'Advance with Kelly Carpenter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26.sp,
                fontFamily: 'Work Sans',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 17.h),
            height: 111.h,
            decoration: BoxDecoration(color: Color(0xFF262626)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Smart, challenging workouts to surge your strenght & athleticism. ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                8.verticalSpace,
                Text(
                  '8 weeks, full home gym',
                  style: TextStyle(
                    color: Color(0xFFA8A8A8),
                    fontSize: 12.sp,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
