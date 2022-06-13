import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: 20.h,
            left: 20.w,
            right: 20.w,
          ),
          child: Column(
            children: [],
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
