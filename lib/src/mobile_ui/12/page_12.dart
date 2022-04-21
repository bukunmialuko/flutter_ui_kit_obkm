import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_kit_obkm/src/navigation/navigation_service.dart';
import 'package:flutter_ui_kit_obkm/src/res/assets.dart';
import 'package:get_it/get_it.dart';

class Page12 extends StatefulWidget {
  const Page12({Key? key}) : super(key: key);

  @override
  _Page12State createState() => _Page12State();
}

class _Page12State extends State<Page12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(23.w, 30.h, 23.w, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Living room',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.only(right: 30.w),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed leo quis parturient tristique mauris. Amet urna tortor tortor duis tellus risus.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.43,
                    ),
                  ),
                ),
                Divider(
                    height: 32.h, color: const Color(0xFFD0D0D0), thickness: 1),
                _titleWidget('Family Members Access'),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.h),
                  child: SizedBox(
                    height: 61.h,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          CircleAvatar(
                            radius: 31.w,
                            backgroundColor: const Color(0xFFC4C4C4),
                          ),
                          Positioned(
                            right: 2.w,
                            bottom: 0,
                            child: CircleAvatar(
                              radius: 8.w,
                              backgroundColor: const Color(0xFFFCFCFC),
                              child: const Icon(
                                Icons.check_circle_outline_rounded,
                                color: Color(0xFF161616),
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      separatorBuilder: (_, index) => SizedBox(width: 16.w),
                      itemCount: 4,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30.w),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed leo quis parturient tristique mauris. ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.43,
                    ),
                  ),
                ),
                Divider(
                    height: 60.h, color: const Color(0xFFD0D0D0), thickness: 1),
                _titleWidget('Devices in living room'),
                SizedBox(height: 19.h),
                Wrap(
                  spacing: 10.w,
                  runSpacing: 17.h,
                  children: [
                    _livingRoomItem(
                        name: 'Lights', iconPath: Assets.PG12_LIGHT),
                    _livingRoomItem(name: 'Sofa', iconPath: Assets.PG12_SOFA),
                    _livingRoomItem(
                        name: 'Fridge', iconPath: Assets.PG12_FRIDGE),
                    _livingRoomItem(
                      name: 'Fridge',
                      iconPath: Assets.PG12_FAN,
                      available: false,
                    ),
                    _livingRoomItem(
                      name: 'Fridge',
                      iconPath: Assets.PG12_AIR_CONDITIONER,
                      warning: true,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _livingRoomItem(
          {required String name,
          required String iconPath,
          bool available = true,
          bool warning = false}) =>
      Opacity(
        opacity: available ? 1 : 0.2,
        child: Container(
          width: 107.w,
          height: 130.h,
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 13.h),
          decoration: BoxDecoration(
              color: const Color(0xFFF4F4F4),
              borderRadius: BorderRadius.circular(4.r),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 1),
                  blurRadius: 4,
                  color: Colors.black.withOpacity(.25),
                )
              ]),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 5.w,
                  backgroundColor: warning
                      ? const Color(0xFFF1C21B)
                      : const Color(0xFF24A148),
                ),
              ),
              SvgPicture.asset(iconPath),
              const Expanded(child: SizedBox()),
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      );

  Widget _titleWidget(String title) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: Colors.black,
            ),
          ),
          GestureDetector(
              onTap: () {
                GetIt.I.get<NavigationService>().back();
              },
              child: const Icon(Icons.add_circle, color: Colors.black)),
        ],
      );
}
