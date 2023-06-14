import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';
import 'package:go_router/go_router.dart';

class Page58 extends StatefulWidget {
  const Page58({super.key});

  @override
  State<Page58> createState() => _Page58State();
}

class _Page58State extends State<Page58> {
  final int itemCount = 7;
  final int initialIndex = 4;

  double itemSpacing = 32.w;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _dialogBuilder(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  _dialogBuilder(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF161616),
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  fixedSize: Size(342, 54),
                ),
                child: Text(
                  'Show Dialog',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  context.pop();
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF161616),
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  fixedSize: Size(342, 54),
                ),
                child: Text(
                  'Back',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.only(left: 26.w, right: 26.w),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.0))),
          content: Container(
            width: 339.w,
            height: 452.h,
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  height: 150.w,
                  width: 150.w,
                  margin: EdgeInsets.only(top: 56.h, bottom: 42.h),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Assets.png.m57.check.image().image,
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(height: 15.h),
                Container(
                  height: 15.h,
                  width: 169.w,
                  margin: EdgeInsets.only(bottom: 48.h),
                  decoration: BoxDecoration(
                      color: Color(0xffc4c4c4), borderRadius: BorderRadius.circular(50)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 58.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          color: Color(0xffc4c4c4), borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: 58.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          color: Color(0xffc4c4c4), borderRadius: BorderRadius.circular(50)),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
