import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_kit_obkm/src/navigation/navigation_service.dart';
import 'package:flutter_ui_kit_obkm/src/res/assets.dart';
import 'package:get_it/get_it.dart';
import 'package:table_calendar/table_calendar.dart';

class Page11 extends StatefulWidget {
  const Page11({Key? key}) : super(key: key);

  @override
  _Page11State createState() => _Page11State();
}

class _Page11State extends State<Page11> {
  // DateTime? _focusedDay;
  DateTime? _selectedDay;
  String? _timeUnit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(23.w, 20.h, 23.w, 0),
                child: _calendarWidget(),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(23.w, 36.h, 23.w, 17.h),
                child: Text(
                  'My Schedule',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF262626),
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                // clipBehavior: Clip.none,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) => _scheduleItem(),
                separatorBuilder: (_, index) => SizedBox(height: 16.h),
                itemCount: 10,
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _scheduleItem() => GestureDetector(
        onTap: () {
          GetIt.I.get<NavigationService>().back();
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 23.w),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F4F4),
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(8.r),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 8,
                      color: Colors.black.withOpacity(.25),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 14.w, top: 15.h, bottom: 15.h),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30.w,
                        backgroundColor: const Color(0xFFC4C4C4),
                      ),
                      SizedBox(width: 15.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF262626),
                            ),
                          ),
                          Text(
                            '@thecindydoe',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF262626),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 31.w),
                      Text(
                        'Jun. 15th @ 8:30AM',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF262626),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: SvgPicture.asset(
                  Assets.PG11_01,
                  height: 21.37.r,
                  width: 21.37.r,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      );

  Widget _calendarWidget() => Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 17.h),
        margin: EdgeInsets.only(bottom: 36.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13.r),
          boxShadow: [
            BoxShadow(
              blurRadius: 60,
              offset: const Offset(0, 10),
              color: Colors.black.withOpacity(.1),
            ),
          ],
        ),
        child: Column(
          children: [
            TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime(2020),
              lastDay: DateTime(2040),
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  // _focusedDay = focusedDay; // update `_focusedDay` here as well
                });
              },
              onPageChanged: (focusedDay) {
                // _focusedDay = focusedDay;
              },
              currentDay: DateTime.now().add(const Duration(days: 2)),
              availableCalendarFormats: const {CalendarFormat.month: 'Month'},
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.sp,
                  color: const Color(0xFF3C3C43).withOpacity(.3),
                ),
                weekendStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.sp,
                  color: const Color(0xFF3C3C43).withOpacity(.3),
                ),
              ),
              headerStyle: HeaderStyle(
                titleTextStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF262626),
                ),
              ),
              calendarStyle: CalendarStyle(
                selectedTextStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                defaultTextStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF262626),
                ),
                weekendTextStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF262626),
                ),
                selectedDecoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF525252),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      color: Colors.black.withOpacity(.25),
                      blurRadius: 16,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: Divider(
                height: 32.h,
                thickness: 1,
                color: const Color(0xFFD0D0D0),
              ),
            ),
            Row(
              children: [
                Text(
                  'Time',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFF767680).withOpacity(.12),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 28.w,
                        height: 28.h,
                        child: Text(
                          '09',
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                        height: 28.h,
                        child: Text(
                          ':',
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 28.w,
                        height: 28.h,
                        child: Text(
                          '41',
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 6.w),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFF767680).withOpacity(.12),
                    borderRadius: BorderRadius.circular(8.91.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [_timeUnitWidget('AM'), _timeUnitWidget('PM')],
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget _timeUnitWidget(String value) => GestureDetector(
        onTap: () {
          setState(() {
            _timeUnit = value;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.93.r),
              color: value == _timeUnit ? Colors.white : Colors.transparent,
              boxShadow: value == _timeUnit
                  ? [
                      BoxShadow(
                        offset: const Offset(0, 3),
                        blurRadius: 1,
                        color: Colors.black.withOpacity(.04),
                      ),
                      BoxShadow(
                        offset: const Offset(0, 3),
                        blurRadius: 8,
                        color: Colors.black.withOpacity(.12),
                      ),
                    ]
                  : []),
          child: Text(
            value,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight:
                  value == _timeUnit ? FontWeight.w600 : FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      );
}
