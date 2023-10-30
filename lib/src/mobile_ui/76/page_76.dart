import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';

class Page76 extends StatelessWidget {
  const Page76({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text("Podcast"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            SettingsCard(
              leading: Icon(
                Icons.facebook,
                size: 24.w,
              ),
              title: 'Facebook',
              trailingText: 'Connected',
            ),
            SettingsCard(
              leading: Assets.svg.m76.google.svg(height: 24, width: 24),
              title: 'Google',
              trailingText: 'Connected',
            ),
            SettingsCard(
              leading: Assets.svg.m76.twitter.svg(height: 24, width: 24),
              title: 'Twitter',
              trailingText: 'Connect',
            ),
            SettingsCard(
              title: 'Dark Mode',
              trailingText: 'Dark Mode',
            ),
            SettingsCard(
              title: 'Toggle Beta Version',
              trailing: Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 24.w,
              ),
            ),
            SettingsCard(
              title: 'Disable image loading',
              trailing: Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ),
            SettingsCard(
              title: 'Limit background data usage to wifi only',
              trailing: Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ),
            SettingsCard(
              title: 'Push Notification',
            ),
            SettingsCard(
              title: 'Account',
            ),
            SettingsCard(
              title: 'Email notification',
            ),
            SettingsCard(
              title: 'Join our community',
            ),
            SettingsCard(
              title: 'Sign out',
            ),
          ],
        ),
      ),
      drawerScrimColor: Colors.transparent,
      drawer: Drawer(
        backgroundColor: Color(0xFF262626),
        width: 316.w,
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 27.w, bottom: 14.h, top: 27.h),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: Color(0xFFC4C4C4),
                        shape: OvalBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'View profile',
                          style: TextStyle(
                            color: Color(0xFFA8A8A8),
                            fontSize: 12.sp,
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 27, vertical: 22),
                color: Color(0xff525252),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tab #1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Tab #2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Tab #3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Tab #4',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 48.h,
                    ),
                    Text(
                      'Tab #5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Tab #6',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Tab #7',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    this.leading,
    required this.title,
    this.trailingText,
    this.trailing,
  }) : assert((trailing == null) || (trailingText == null));

  final Widget? leading;
  final String title;
  final String? trailingText;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 18.h,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0x99D0D0D0),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                leading ?? SizedBox.shrink(),
                8.horizontalSpace,
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          if (trailingText != null)
            Text(
              trailingText!,
              style: TextStyle(
                color: Color(0xFF0F62FE),
                fontSize: 14,
                fontFamily: 'Work Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          if (trailing != null)
            SizedBox.square(
              dimension: 24.w,
              child: trailing!,
            )
        ],
      ),
    );
  }
}
