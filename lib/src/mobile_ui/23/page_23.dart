import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/23/widget/schedule_list.dart';
import 'package:go_router/go_router.dart';

class Page23 extends StatefulWidget {
  const Page23({Key? key}) : super(key: key);

  @override
  State<Page23> createState() => _Page23State();
}

class _Page23State extends State<Page23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, right: 28.w),
          child: CustomScrollView(
            physics: ClampingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 70.h)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 9.h),
                  child: Text(
                    "Welcome back, John",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                      height: 1.3,
                      color: Color(0xff262626),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            "Calendar",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24.sp,
                              height: 1.4,
                              color: Color(0xff262626),
                            ),
                          ),
                        ),
                        Text(
                          "November",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xff262626),
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xff161616),
                        )
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _DateItem(
                          isToday: false,
                          day: 'SUN',
                          dayNumber: '14',
                        ),
                        _DateItem(
                          isToday: false,
                          day: 'MON',
                          dayNumber: '15',
                        ),
                        _DateItem(
                          isToday: false,
                          day: 'TUE',
                          dayNumber: '16',
                        ),
                        _DateItem(
                          isToday: true,
                          day: 'WED',
                          dayNumber: '17',
                        ),
                        _DateItem(
                          isToday: false,
                          day: 'THU',
                          dayNumber: '18',
                        ),
                        _DateItem(
                          isToday: false,
                          day: 'FRI',
                          dayNumber: '19',
                        ),
                        _DateItem(
                          isToday: false,
                          day: 'SAT',
                          dayNumber: '20',
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 27.h, top: 48.h),
                  child: Text(
                    "Schedule",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp,
                      color: Color(0xff262626),
                    ),
                  ),
                ),
              ),
              ScheduleList(),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 46.w,
        width: 46.w,
        child: FloatingActionButton(
          backgroundColor: Color(0xffC4C4C4),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
          child: Icon(
            Icons.add,
            color: Color(0xff161616),
          ), //child widget inside this button
          onPressed: () {
            context.pop();
          },
        ),
      ),
    );
  }
}

class _DateItem extends StatelessWidget {
  final bool isToday;
  final String day;
  final String dayNumber;
  const _DateItem({Key? key, required this.isToday, required this.day, required this.dayNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          day,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 13.sp,
            color: Color(0xff3C3C43).withOpacity(0.3),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: isToday ? Color(0xffC4C4C4) : null,
            borderRadius: BorderRadius.circular(4.r),
          ),
          padding: EdgeInsets.only(left: 9.w, right: 9.w, bottom: 9.w, top: 9.w),
          margin: REdgeInsets.only(top: 5.h),
          child: Text(
            dayNumber,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20.sp,
              color: Color(0xff262626),
            ),
          ),
        ),
      ],
    );
  }
}
