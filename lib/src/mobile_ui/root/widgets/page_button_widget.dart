import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/res/colors.dart';

class PageButtonWidget extends StatelessWidget {
  final Function onPressed;
  final int page;

  const PageButtonWidget(
      {Key? key, required this.onPressed, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 56.r,
        width: 56.r,
        color: AppColors.greyC4,
        child: Center(
          child: Text(
            "$page",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
