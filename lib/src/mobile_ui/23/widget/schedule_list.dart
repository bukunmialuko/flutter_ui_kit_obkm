import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/23/model/pg_23_model.dart';

class ScheduleList extends StatelessWidget {
  const ScheduleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(left: 17.w, right: 22.w),
            margin: EdgeInsets.only(bottom: Pg23ModelItems.loadItems(context)[index].type == null ? 33.h : 22.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: Pg23ModelItems.loadItems(context)[index].type == null
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                Text(Pg23ModelItems.loadItems(context)[index].timestamp),
                Stack(
                  children: [
                    Container(
                      width: 244,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffF4F4F4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(
                        left: 13.w,
                        right: 15.w,
                        bottom: 10.h,
                        top: Pg23ModelItems.loadItems(context)[index].type == null ? 10.h : 16.h,
                      ),
                      margin: EdgeInsets.only(top: 8.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              Pg23ModelItems.loadItems(context)[index].title,
                              style: TextStyle(
                                color: Pg23ModelItems.loadItems(context)[index].type == null
                                    ? Color(0xffA8A8A8)
                                    : Color(0xff262626),
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                          if (Pg23ModelItems.loadItems(context)[index].type != null)
                            Padding(
                              padding: EdgeInsets.only(left: 2.0),
                              child: Icon(Icons.more_horiz),
                            )
                        ],
                      ),
                    ),
                    if (Pg23ModelItems.loadItems(context)[index].type != null)
                      Container(
                        height: 16.h,
                        padding: EdgeInsets.only(left: 10.w, right: 10.w),
                        margin: EdgeInsets.only(left: 11),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff262626),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Event type",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 8.sp,
                            height: 1.3,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          );
        },
        childCount: Pg23ModelItems.loadItems(context).length,
      ),

    );
  }
}
