import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget bootstrap(Widget child) {
  return ScreenUtilInit(
    designSize: const Size(390, 844),
    child: child,
    builder: (context, child) => MaterialApp(home: child),
  );
}
