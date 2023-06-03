import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/22/widgets/task_list.dart';
import 'package:go_router/go_router.dart';

class Page22 extends StatefulWidget {
  const Page22({Key? key}) : super(key: key);

  @override
  State<Page22> createState() => _Page22State();
}

class _Page22State extends State<Page22> {
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
                child: Padding(
                  padding: EdgeInsets.only(top: 18.h, bottom: 20.h),
                  child: Text(
                    "Home",
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
                    _DateItem(
                      isToday: false,
                      day: 'SUN',
                      dayNumber: '14',
                    ),
                    _DateItem(
                      isToday: false,
                      day: 'MON',
                      dayNumber: '15',
                      hasData: true,
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
                      hasData: true,
                    ),
                    _DateItem(
                      isToday: false,
                      day: 'THU',
                      dayNumber: '18',
                      hasData: true,
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
              ),
              SliverToBoxAdapter(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 21, bottom: 24),
                      child: Divider(height: 1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Day",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xff262626),
                          ),
                        ),
                        Text(
                          "3 days",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xffC4C4C4),
                          ),
                        ),
                        Text(
                          "Week",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xffC4C4C4),
                          ),
                        ),
                        Text(
                          "Month",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xffC4C4C4),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.h, bottom: 32.h),
                      child: Divider(height: 1),
                    ),
                  ],
                ),
              ),
              TaskList(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 50.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xff000000),
                      ),
                      primary: const Color(0xFFFFFFFF),
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      fixedSize: Size(342, 54),
                    ),
                    child: Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      floatingActionButton: Container(
        width: 76.w,
        height: 76.w,
        decoration: BoxDecoration(
          color: Color(0xffEAEAEA),
          borderRadius: BorderRadius.circular(76.w),
        ),
        child: Center(
          child: Icon(
            Icons.add_circle,
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius:
            BorderRadius.only(topLeft: Radius.circular(16.r), topRight: Radius.circular(16.r)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Color(0xffEAEAEA),
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: SizedBox(
              height: 90.h - MediaQuery.of(context).viewPadding.bottom,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 36.w, right: 36.w),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                    ),
                    height: double.infinity,
                    width: 24.w,
                    child: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 24.w,
                    child: Icon(
                      Icons.business_center,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 24.w,
                    child: Icon(
                      Icons.pie_chart,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 24.w,
                    margin: EdgeInsets.only(left: 36.w, right: 36.w),
                    child: Icon(
                      Icons.supervisor_account,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _DateItem extends StatelessWidget {
  final bool isToday;
  final bool hasData;
  final String day;
  final String dayNumber;
  const _DateItem({
    Key? key,
    required this.isToday,
    required this.day,
    required this.dayNumber,
    this.hasData = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isToday ? Color(0xffC4C4C4) : null,
        borderRadius: BorderRadius.circular(4.r),
      ),
      padding: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 5.h, top: 10.h),
      child: Column(
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
          Padding(
            padding: EdgeInsets.only(top: 4.h, bottom: 4.h),
            child: Text(
              dayNumber,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20.sp,
                color: Color(0xff262626),
                height: 1.2,
              ),
            ),
          ),
          Container(
            width: 8.w,
            height: 8.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _getDotColor(isToday: isToday, hasData: hasData),
            ),
          )
        ],
      ),
    );
  }

  Color? _getDotColor({required bool isToday, required bool hasData}) {
    if (isToday && hasData) {
      return Color(0xff262626);
    }

    if (hasData) {
      return Color(0xffC4C4C4);
    }

    return null;
  }
}
