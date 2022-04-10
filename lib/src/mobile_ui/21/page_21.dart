import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/21/widgets/pg_21_list_item.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../navigation/navigation_service.dart';
import 'model/pg_21_model.dart';

class Page21 extends StatefulWidget {
  const Page21({Key? key}) : super(key: key);

  @override
  State<Page21> createState() => _Page21State();
}

class _Page21State extends State<Page21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 27.w, right: 27.w, top: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        GetIt.I.get<NavigationService>().back();
                      },
                      child: SvgPicture.asset(
                        "assets/svg/21/back.svg",
                        height: 48.r,
                        width: 48.r,
                        fit: BoxFit.fill,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        GetIt.I.get<NavigationService>().back();
                      },
                      child: SvgPicture.asset(
                        "assets/svg/21/more.svg",
                        height: 48.r,
                        width: 48.r,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13.h,
                ),
                Text(
                  "Artists",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 28.sp,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      height: 1.28,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 342.w,
                  height: 190.h,
                  decoration: BoxDecoration(
                    color: Color(0xffD0D0D0),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Text(
                  "John Doe",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 28.sp,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      height: 1.28,
                    ),
                  ),
                ),
                Text(
                  "4.5k followers",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xffA8A8A8),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 21.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    GetIt.I.get<NavigationService>().back();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF161616),
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    fixedSize: Size(342, 48),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Shuffle play',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SvgPicture.asset(
                        "assets/svg/21/shuffle.svg",
                        height: 24.r,
                        width: 24.r,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 45.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Pg21ModelItems.loadItems(context).length,
                  itemBuilder: (c, i) {
                    return Pg21ListItem(
                      index: i + 1,
                      model: Pg21ModelItems.loadItems(context)[i],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 21.h,
                    );
                  },
                ),
                SizedBox(
                  height: 40.h,
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      floatingActionButton: Container(
        width: 76.w,
        height: 76.w,
        decoration: BoxDecoration(
          // color: Colors.blue,

          color: Color(0xffD0D0D0),
          borderRadius: BorderRadius.circular(76.w),
        ),
        child: Center(
          child: SvgPicture.asset(
            "assets/svg/21/pause_circle_outline.svg",
            height: 56.w,
            width: 56.w,
            fit: BoxFit.fill,
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r), topRight: Radius.circular(16.r)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Color(0xffD0D0D0),
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: SizedBox(
              height: 90.h - MediaQuery.of(context).viewPadding.bottom,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 84.w),
                    child: Icon(
                      Icons.fast_rewind,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 84.w),
                    child: Icon(
                      Icons.fast_forward,
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
