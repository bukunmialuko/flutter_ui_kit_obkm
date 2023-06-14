import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Page55 extends StatefulWidget {
  const Page55({super.key});

  @override
  State<Page55> createState() => _Page55State();
}

class _Page55State extends State<Page55> {
  final int itemCount = 7;
  final int initialIndex = 4;

  double itemSpacing = 32.w;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _modalBottomSheetShow(context);
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
                  _modalBottomSheetShow(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF161616),
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  fixedSize: Size(342, 54),
                ),
                child: Text(
                  'Show Button Sheet',
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

  Future _modalBottomSheetShow(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (context) => SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: 488.h,
          child: Column(
            children: [
              Container(
                height: 7.h,
                width: 146.w,
                margin: EdgeInsets.only(top: 13.h, bottom: 22.h),
                decoration: BoxDecoration(
                    color: Color(0xffc4c4c4), borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                height: 35.w,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 35.w),
                child: ListView.separated(
                  padding: EdgeInsets.only(left: 16.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: itemCount,
                  itemBuilder: (c, i) => (i + 1) == initialIndex
                      ? Container(
                          decoration:
                              BoxDecoration(color: Color(0xffA8A8A8), shape: BoxShape.circle),
                          width: 35.w,
                          height: 35.w,
                        )
                      : Container(
                          decoration:
                              BoxDecoration(color: Color(0xfff4f4f4), shape: BoxShape.circle),
                          width: 35.w,
                          height: 35.w,
                        ),
                  separatorBuilder: (BuildContext context, int index) => SizedBox(
                    width: 16.w,
                  ),
                ),
              ),
              SizedBox(
                height: 302.h,
                width: double.infinity,
                child: PageView.builder(
                  itemCount: itemCount,
                  controller: PageController(
                    initialPage: initialIndex - 1,
                    viewportFraction: 0.6,
                  ),
                  itemBuilder: (c, i) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xffD0D0D0), borderRadius: BorderRadius.circular(32)),
                      width: 220.w,
                      height: 302.h,
                      margin: EdgeInsets.only(left: 12.w, right: 12.w),
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 15.h,
                                  width: 146.w,
                                  margin: EdgeInsets.only(top: 22.h, bottom: 22.h),
                                  decoration: BoxDecoration(
                                      color: Color(0xff525252),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                Container(
                                  height: 120.w,
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xff525252), shape: BoxShape.circle),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 96.h,
                            width: 220.w,
                            decoration: BoxDecoration(
                              color: Color(0xffF4F4F4),
                              // color: Colors.yellow,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(32),
                                bottomRight: Radius.circular(32),
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 15.h,
                                  width: 165.w,
                                  margin: EdgeInsets.only(top: 19.h, bottom: 15.h),
                                  decoration: BoxDecoration(
                                      color: Color(0xffA8A8A8),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                Container(
                                  height: 15.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xffA8A8A8),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
