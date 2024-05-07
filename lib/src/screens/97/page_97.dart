import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';

class Page97 extends StatelessWidget {
  const Page97({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 4,
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
          padding: EdgeInsets.only(top: 39.h, left: 24.w, right: 24.w),
          children: [
            Text(
              'Meet the Master Trainers',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: 'Work Sans',
                fontWeight: FontWeight.w500,
              ),
            ),
            9.verticalSpace,
            Text(
              'The pros behind your programs, workouts & tips',
              style: TextStyle(
                color: Color(0xFFA8A8A8),
                fontSize: 26.sp,
                fontFamily: 'Work Sans',
                fontWeight: FontWeight.w500,
              ),
            ),
            48.verticalSpace,
            Wrap(
              runSpacing: 70.h,
              spacing: 33.w,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                TrainerCard(
                  image: Assets.png.m97.womanWithHandpad.provider(),
                ),
                TrainerCard(
                  image: Assets.png.m97.manInWhite.provider(),
                ),
                TrainerCard(
                  image: Assets.png.m97.jumpingLady.provider(),
                ),
                TrainerCard(
                  image: Assets.png.m97.femaleFashionModelPosesJump.provider(),
                ),
              ],
            )
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}

class TrainerCard extends StatelessWidget {
  final ImageProvider image;

  const TrainerCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      child: Column(
        children: [
          Container(
            width: 150.w,
            height: 150.w,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: image,
                fit: BoxFit.cover,
              ),
              shape: OvalBorder(),
            ),
          ),
          17.verticalSpace,
          Text(
            'Kirsty White',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          2.verticalSpace,
          Text(
            'High Intensity Training, Cardio',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFA8A8A8),
              fontSize: 16.sp,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
