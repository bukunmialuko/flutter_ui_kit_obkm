import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';
import 'package:go_router/go_router.dart';

class Page31 extends StatefulWidget {
  const Page31({Key? key}) : super(key: key);

  @override
  State<Page31> createState() => _Page31State();
}

class _Page31State extends State<Page31> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 8.h, left: 24.w, right: 24.w),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(bottom: 48.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu_open, color: Color(0xff161616)),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0.sp,
                        ),
                      ),
                      Icon(Icons.settings_rounded, color: Color(0xff000000)),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffF4F4F4), borderRadius: BorderRadius.circular(8.r)),
                  margin: EdgeInsets.only(bottom: 24.h),
                  child: Assets.png.m31.banner.image(
                    height: 253.0.h,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 42.0.h,
                  width: 290.0.w,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(6.0.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 27.0.w),
                      Center(
                        child: Icon(Icons.search),
                      ),
                      SizedBox(width: 10.0.w),
                      Flexible(
                        child: Center(
                          child: TextFormField(
                            decoration: InputDecoration.collapsed(
                              hintText: 'Search...',
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(top: 35.h, bottom: 16.h),
                  child: Text(
                    'Popular Stations',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0.sp,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 14.h,
                    crossAxisSpacing: 12.w,
                    mainAxisExtent: 127.h,
                  ),
                  itemBuilder: (c, i) {
                    return SizedBox(
                      // height: 127.h,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Container(
                              height: 110.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                image: DecorationImage(
                                  image: AssetImage('assets/png/m31/img${i + 1}.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 6.h),
                            child: Text(
                              "Station #${i + 1}",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 10.0.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: _bottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      floatingActionButton: GestureDetector(
        onTap: () {
          context.pop();
        },
        child: Container(
          width: 76.w,
          height: 76.w,
          decoration: BoxDecoration(
            color: Color(0xfff4f4f4),
            borderRadius: BorderRadius.circular(76.w),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.play_arrow,
              size: 36.r,
            ),
          ),
        ),
      ),
    );
  }

  Container _bottomNavBar() {
    return Container(
      height: 90.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xffE0E0E0),
        ),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 33.w, right: 34.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.control_point_duplicate),
              SizedBox(width: 41.w),
              Icon(Icons.cast_connected, color: Color(0xffA8A8A8)),
              Spacer(),
              Icon(Icons.horizontal_split, color: Color(0xffA8A8A8)),
              SizedBox(width: 41.w),
              Icon(Icons.perm_contact_calendar, color: Color(0xffA8A8A8)),
            ],
          ),
        ),
      ),
    );
  }
}
