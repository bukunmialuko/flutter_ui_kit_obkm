import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';

class Page99 extends StatelessWidget {
  const Page99({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Activity"),
          centerTitle: false,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          bottom: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: "History",
              ),
              Tab(
                text: "Achievements",
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              19.verticalSpace,
              Text(
                "What’s New",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
              9.verticalSpace,
              Text(
                'Check out the lastest from Costa Training.',
                style: TextStyle(
                  color: Color(0xFFA8A8A8),
                  fontSize: 26,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
              35.verticalSpace,
              Assets.png.m99.poster.image(
                height: 436.h,
                width: double.infinity,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
