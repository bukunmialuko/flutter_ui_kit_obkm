import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/35/widgets/date_item.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/35/widgets/event.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/35/widgets/nearby_event.dart';
import 'package:go_router/go_router.dart';

class Page35 extends StatelessWidget {
  const Page35({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
          child: CustomScrollView(
            physics: ClampingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: Icon(Icons.chevron_left_rounded)),
                    Icon(Icons.calendar_today_rounded)
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(top: 18.h, bottom: 2.h),
                  child: Text(
                    "Events",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22.sp,
                      height: 1.1,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DateItem(
                      isToday: false,
                      day: 'SUN',
                      dayNumber: '14',
                    ),
                    DateItem(
                      isToday: false,
                      day: 'MON',
                      dayNumber: '15',
                      hasData: true,
                    ),
                    DateItem(
                      isToday: false,
                      day: 'TUE',
                      dayNumber: '16',
                    ),
                    DateItem(
                      isToday: true,
                      day: 'WED',
                      dayNumber: '17',
                      hasData: true,
                    ),
                    DateItem(
                      isToday: false,
                      day: 'THU',
                      dayNumber: '18',
                      hasData: true,
                    ),
                    DateItem(
                      isToday: false,
                      day: 'FRI',
                      dayNumber: '19',
                    ),
                    DateItem(
                      isToday: false,
                      day: 'SAT',
                      dayNumber: '20',
                    )
                  ],
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 35.h)),
              Event(),
              SliverToBoxAdapter(child: SizedBox(height: 18.h)),
              NearbyEvent(),
            ],
          ),
        ),
      ),
    );
  }
}
