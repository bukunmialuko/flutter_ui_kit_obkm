import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/22/models/pg_22_model.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Pg22ModelItems.loadItems(context)[index].isCompleted
              ? Container(margin: EdgeInsets.only(bottom: 24.h), child: _Completed(index: index))
              : Container(margin: EdgeInsets.only(bottom: 24.h), child: _OnGoing(index: index));
        },
        childCount: Pg22ModelItems.loadItems(context).length,
      ),
    );
  }
}

class _Completed extends StatelessWidget {
  final int index;

  const _Completed({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.w,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffC4C4C4),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.file_download_done,
            color: Color(0xff262626),
          ),
          SizedBox(width: 8.w),
          Text(
            Pg22ModelItems.loadItems(context)[index].title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              color: Color(0xff262626),
            ),
          ),
        ],
      ),
    );
  }
}

class _OnGoing extends StatelessWidget {
  final int index;

  const _OnGoing({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70.w,
          height: 70.w,
          margin: EdgeInsets.only(right: 28.w),
          decoration: BoxDecoration(
            color: Color(0xffC4C4C4),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 70.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 8.h, top: 2.h),
                  height: 6.h,
                  child: Stack(
                    children: [
                      Container(
                        height: 5.h,
                        width: 342.w,
                        decoration: BoxDecoration(
                            color: const Color(0xFFABABAB),
                            borderRadius: BorderRadius.all(Radius.circular(50.r))),
                      ),
                      Container(
                        height: 5.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: const Color(0xff262626),
                            borderRadius: BorderRadius.all(Radius.circular(50.r))),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Text(Pg22ModelItems.loadItems(context)[index].title)),
                      if (Pg22ModelItems.loadItems(context)[index].completedTask != null)
                        Text(
                          "${Pg22ModelItems.loadItems(context)[index].completedTask}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Color(0xff262626),
                          ),
                        ),
                      if (Pg22ModelItems.loadItems(context)[index].completedTask != null &&
                          Pg22ModelItems.loadItems(context)[index].totalTask != null)
                        Text(
                          "/",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Color(0xffA8A8A8),
                          ),
                        ),
                      if (Pg22ModelItems.loadItems(context)[index].totalTask != null)
                        Text(
                          "${Pg22ModelItems.loadItems(context)[index].totalTask}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Color(0xffA8A8A8),
                          ),
                        ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        Pg22ModelItems.loadItems(context)[index].duration,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: Color(0xffA8A8A8),
                        ),
                      ),
                    ),
                    Text(
                      Pg22ModelItems.loadItems(context)[index].category,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: Color(0xffA8A8A8),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
