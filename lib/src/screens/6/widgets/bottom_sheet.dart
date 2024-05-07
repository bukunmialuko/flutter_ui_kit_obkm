import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSheetWidget extends StatelessWidget {
  final ScrollController scrollController;
  final List<dynamic> data;

  const BottomSheetWidget({Key? key, required this.data, required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF4F4F4),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xffC4C4C4).withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(0, -4), // changes position of shadow
          ),
        ],
      ),
      child: SingleChildScrollView(
        controller: scrollController,
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50.w,
                  height: 4.h,
                  decoration: BoxDecoration(color: const Color(0xff262626), borderRadius: BorderRadius.circular(50.r)),
                  margin: EdgeInsets.only(top: 21.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 25.h, top: 25.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Exercises",
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            ListView.separated(
                shrinkWrap: true,
                controller: scrollController,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (c, i) {
                  return Container(
                    height: 92.h,
                    margin: EdgeInsets.only(left: 24.w, right: 24.w),
                    padding: EdgeInsets.only(left: 18.w, right: 18.w),
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff262626)), borderRadius: BorderRadius.circular(8.r)),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.r),
                            child: Container(
                              width: 58.h,
                              height: 58.h,
                              color: const Color(0xff262626),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.w,
                                    vertical: 10.h,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Excercise #${i + 1}",
                                          style: GoogleFonts.workSans(
                                            textStyle: TextStyle(
                                              fontSize: 16.sp,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                        style: GoogleFonts.workSans(
                                          textStyle: TextStyle(
                                            fontSize: 12.sp,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (c, i) {
                  return SizedBox(
                    height: 18.h,
                  );
                },
                itemCount: data.length)
          ],
        ),
      ),
    );
  }
}
