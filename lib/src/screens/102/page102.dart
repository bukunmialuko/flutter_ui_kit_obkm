import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page102 extends StatelessWidget {
  const Page102({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Browse By'),
          bottom: TabBar(
            labelColor: Colors.black,
            isScrollable: true,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(text: 'For You'),
              Tab(text: 'Browse'),
              Tab(text: 'Expert Tips'),
              Tab(text: 'Collections'),
              Tab(text: 'Trainers'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SizedBox(),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  26.verticalSpace,
                  Text(
                    '28 workouts',
                    style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                  ),
                  13.verticalSpace,
                  ...List.generate(
                    28,
                    (index) => WorkoutCard(),
                  ),
                ],
              ),
            ),
            SizedBox(),
            SizedBox(),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}

class WorkoutCard extends StatelessWidget {
  const WorkoutCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      margin: EdgeInsets.only(
        bottom: 16.w,
      ),
      child: Row(
        children: [
          Container(
            width: 100.w,
            height: 100.w,
            color: Color(0xffC4C4C4),
            alignment: Alignment.center,
            padding: EdgeInsets.all(20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Text(
                    '13',
                    style: GoogleFonts.workSans(
                      color: Colors.black,
                      fontSize: 24.sp,
                    ),
                  ),
                ),
                16.verticalSpace,
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Text(
                    'min',
                    style: GoogleFonts.workSans(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          14.horizontalSpace,
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 13.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Text(
                      'Abs & Arms',
                      style: GoogleFonts.workSans(
                        color: Color(0xff262626),
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  12.verticalSpace,
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Text(
                      'Intermediate - Basic equipment - Strength',
                      style: GoogleFonts.workSans(
                        color: Color(0xffA8A8A8),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
