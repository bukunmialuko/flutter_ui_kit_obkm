import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';

class Page98 extends StatelessWidget {
  const Page98({super.key});

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
            children: [
              65.verticalSpace,
              Text(
                'TRAIN AND COLLECT',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                  fontFamily: 'Abolition',
                  fontWeight: FontWeight.w400,
                ),
              ),
              32.verticalSpace,
              Text(
                'You did it, now celebrate it. Workouts now earn trophies, awards and streaks. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFA8A8A8),
                  fontSize: 14,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
              35.verticalSpace,
              Container(
                width: 137,
                height: 46,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF262626)),
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Find a Workout',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFA8A8A8),
                    fontSize: 14,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              51.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Achievements',
                    style: TextStyle(
                      color: Color(0xFF262626),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              Divider(
                height: 72,
                color: Color(0xFFA8A8A8),
              ),
              Row(
                children: [
                  Text(
                    'Trophies',
                    style: TextStyle(
                      color: Color(0xFF262626),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              35.verticalSpace,
              Wrap(
                spacing: 41.w,
                runSpacing: 35.h,
                children: [
                  TrophyCard(
                    image: Assets.png.m98.lotto.image(
                      width: 48.w,
                      height: 48.h,
                    ),
                  ),
                  TrophyCard(
                    image: Assets.png.m98.cal.image(
                      width: 48.w,
                      height: 48.h,
                    ),
                  ),
                  TrophyCard(
                    image: Assets.png.m98.directoryBook.image(
                      width: 48.w,
                      height: 48.h,
                    ),
                  ),
                  TrophyCard(
                    image: Assets.png.m98.wheel.image(
                      width: 48.w,
                      height: 48.h,
                    ),
                  ),
                  TrophyCard(
                    image: Assets.png.m98.ticket.image(
                      width: 48.w,
                      height: 48.h,
                    ),
                  ),
                  TrophyCard(
                    image: Assets.png.m98.lottery.image(
                      width: 48.w,
                      height: 48.h,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}

class TrophyCard extends StatelessWidget {
  final Widget image;

  const TrophyCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          image,
          19.verticalSpace,
          Text(
            'Trophy name',
            style: TextStyle(
              color: Color(0xFF262626),
              fontSize: 12,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
