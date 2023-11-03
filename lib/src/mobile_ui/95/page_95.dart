import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';

class Page95 extends StatelessWidget {
  const Page95({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: false,
          title: Text("Workouts"),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: "For You",
              ),
              Tab(
                text: "Browse",
              ),
              Tab(
                text: "Expert Tips",
              ),
              Tab(
                text: "Collections",
              ),
              Tab(
                text: "Trainer",
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 17.w),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
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
                    vertical: 7.h,
                  ),
                ),
              ),
            ),
            Cards(
              image: Assets.png.m95.boxedWaterIsBetter.provider(),
              title: 'Perfect For Home',
            ),
            8.verticalSpace,
            Cards(
              image: Assets.png.m95.gymTools.provider(),
              title: 'Workout Focus',
            ),
            8.verticalSpace,
            Cards(
              image: Assets.png.m95.manWithHeavyBall.provider(),
              title: 'Equipment',
            ),
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;

  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 180.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 25.w),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1.00, 0.00),
            end: Alignment(1, 0),
            colors: [
              Color(0xFF3D3D3D),
              Color(0x00262626),
            ],
          ),
        ),
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.sp,
            fontFamily: 'Work Sans',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
