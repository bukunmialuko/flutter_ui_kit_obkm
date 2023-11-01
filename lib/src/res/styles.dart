import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/colors.gen.dart';

import 'dimensions.dart';

class AppStyles {
  static var addressBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(Dimensions.radius),
    borderSide: BorderSide(color: ColorName.grayC4),
  );
  static var underLineBorder = const UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  );

  static var focusedTransparentBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(Dimensions.radius),
    borderSide: const BorderSide(color: Colors.transparent),
  );
  static var energyBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(Dimensions.radius),
    borderSide: const BorderSide(color: Colors.transparent),
  );
}

TextStyle errorTextStyle(context) =>
    TextStyle(fontSize: 10.sp, color: Theme.of(context).colorScheme.error, fontWeight: FontWeight.w500, height: 1.4);
