import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateItem extends StatelessWidget {
  final bool isToday;
  final bool hasData;
  final String day;
  final String dayNumber;
  const DateItem({
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
        borderRadius: BorderRadius.circular(32.r),
      ),
      padding: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 13.h, top: 14.h),
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
