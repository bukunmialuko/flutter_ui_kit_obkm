import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/navigation/navigation_service.dart';
import 'package:flutter_ui_kit_obkm/src/res/assets.dart';
import 'package:get_it/get_it.dart';

class Page13 extends StatefulWidget {
  const Page13({Key? key}) : super(key: key);

  @override
  _Page13State createState() => _Page13State();
}

class _Page13State extends State<Page13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 486.h,
              child: Stack(
                children: [
                  Image.asset(
                    Assets.PG13_BACKGROUND,
                    width: 390.w,
                    height: 486.h,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.h, left: 24.h, right: 24.h),
                    child: SafeArea(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4F4F4),
                          borderRadius: BorderRadius.circular(24.r),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 1),
                              blurRadius: 4,
                              color: Colors.black.withOpacity(.25),
                            ),
                          ],
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF525252),
                          ),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search,
                                color: Color(0xFF161616)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 16.h),
                            hintText: 'Search a country, location...',
                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF525252),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24.r),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24.r),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24.r),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 37.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Seattle, United States',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF262626),
                          ),
                        ),
                      ),
                      const Icon(Icons.location_on, color: Color(0xFF161616)),
                    ],
                  ),
                  Divider(
                      height: 18.h,
                      color: const Color(0xFFD0D0D0),
                      thickness: 1),
                  SizedBox(height: 25.h),
                  Text(
                    'Discover Seattle',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF262626),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(right: 29.w, bottom: 32.h, top: 4.h),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed leo quis parturient tristique mauris. Amet urna tortor tortor duis tellus risus.',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 18.w),
                        child: Image.asset(Assets.PG13_IMAGE1,
                            width: 70.w, height: 70.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 18.w),
                        child: Image.asset(Assets.PG13_IMAGE2,
                            width: 70.w, height: 70.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 18.w),
                        child: Image.asset(Assets.PG13_IMAGE3,
                            width: 70.w, height: 70.h),
                      ),
                      const Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: () {
                          GetIt.I.get<NavigationService>().back();
                        },
                        child: Container(
                          width: 48.w,
                          height: 48.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            border: Border.all(color: const Color(0xFF262626)),
                          ),
                          child: Center(
                            child: Text(
                              '31',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
