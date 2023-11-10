import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';

class Page96 extends StatelessWidget {
  const Page96({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 3,
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
          padding: EdgeInsets.only(top: 39.h),
          children: [
            Section(
              title: 'Top Picks',
              children: [
                24.horizontalSpace,
                Cards(
                  image: Assets.png.m96.run.provider(),
                  title: 'Essential Yoga Flows for Every Day',
                  caption: '6 Workouts - All Levels',
                ),
                16.horizontalSpace,
                Cards(
                  image: Assets.png.m96.runUphill.provider(),
                  title: 'Essential Yoga Flows for Every Day',
                  caption: '6 Workouts - All Levels',
                ),
                16.horizontalSpace,
              ],
            ),
            43.verticalSpace,
            Section(
              title: 'Life Hacks',
              children: [
                24.horizontalSpace,
                Cards(
                  image: Assets.png.m96.runOnBridge.provider(),
                  title: 'Harness The Power of Your Cycle',
                  caption: '21 Workouts - All Levels',
                ),
                16.horizontalSpace,
                Cards(
                  image: Assets.png.m96.runOnShore.provider(),
                  title: 'Harness The Power of Your Cycle',
                  caption: '21 Workouts - All Levels',
                ),
                16.horizontalSpace,
              ],
            ),
            43.verticalSpace,
            Section(
              title: 'Upgrade Your Run',
              children: [
                24.horizontalSpace,
                Cards(
                  image: Assets.png.m96.climbingSteps.provider(),
                  title: 'Harness The Power of Your Cycle',
                  caption: '21 Workouts - All Levels',
                ),
                16.horizontalSpace,
                Cards(
                  image: Assets.png.m96.runner.provider(),
                  title: 'Harness The Power of Your Cycle',
                  caption: '21 Workouts - All Levels',
                ),
                16.horizontalSpace,
              ],
            ),
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;

  final List<Widget> children;

  const Section({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Work Sans',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          16.verticalSpace,
          SizedBox(
            height: 180.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final String caption;

  const Cards({
    super.key,
    required this.title,
    required this.caption,
    required this.image,
  });

  final String title;

  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 180.h,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 14.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.sp,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w500,
            ),
          ),
          12.verticalSpace,
          Text(
            caption,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13.sp,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
