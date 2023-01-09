import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/36/permanent_bottom_sheet.dart';

class Page36 extends StatelessWidget {
  const Page36({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // appBar
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 6.w,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // the left chevron
                      IconButton(
                        iconSize: 24.w,
                        icon: Icon(Icons.chevron_left_rounded),
                        onPressed: () => Navigator.pop(context),
                      ),
                      // the title
                      Text(
                        "Share",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // the open menu
                      IconButton(
                        iconSize: 24.w,
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.calendar_today_rounded),
                      ),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 44.w, vertical: 71.w),
                child: Container(
                  height: 365.w,
                  width: 302.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.w),
                    color: Color(0xffC4C4C4)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: PermanentBottomSheetWidget(),
    );
  }
}
