import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/37/add_to_cart.dart';

class Page37 extends StatelessWidget {
  const Page37({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
        leading: IconButton(
          iconSize: 24.w,
          icon: Icon(Icons.chevron_left_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Share",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            iconSize: 24.w,
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.menu_open_rounded),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: Assets.png.m37.watch.image().image,
                  fit: BoxFit.fitHeight),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                FloatingButton(),
                SizedBox(
                  height: 34.w,
                ),
                AddToCart(),
              ],
            ),
          )
        ],
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
    );
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 90.w,
            width: 90.w,
            decoration: BoxDecoration(
              color: Color(0xffd0d0d0),
              borderRadius: BorderRadius.circular(16.w),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: Offset(0, 1.w),
                  blurRadius: 4.w,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.admin_panel_settings_rounded,
                  size: 24.w,
                ),
                SizedBox(
                  height: 12.w,
                ),
                Text(
                  "Descriptions",
                  style: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 90.w,
            width: 90.w,
            decoration: BoxDecoration(
              color: Color(0xffd0d0d0),
              borderRadius: BorderRadius.circular(16.w),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: Offset(0, 1.w),
                  blurRadius: 4.w,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu_book_rounded,
                  size: 24.w,
                ),
                SizedBox(
                  height: 12.w,
                ),
                Text(
                  "Descriptions",
                  style: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 90.w,
            width: 90.w,
            decoration: BoxDecoration(
              color: Color(0xffd0d0d0),
              borderRadius: BorderRadius.circular(16.w),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: Offset(0, 1.w),
                  blurRadius: 4.w,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.settings_remote_rounded,
                  size: 24.w,
                ),
                SizedBox(
                  height: 12.w,
                ),
                Text(
                  "Descriptions",
                  style: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
