import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/generated/l10n.dart';
import 'package:flutter_ui_kit_obkm/src/res/colors.dart';
import 'package:flutter_ui_kit_obkm/src/res/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(24.w, 54.h, 24.w, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 24.r,
                      height: 24.r,
                      child: IconButton(
                        visualDensity: VisualDensity.adaptivePlatformDensity,
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  TextFormField(
                    readOnly: true, //false
                    autofocus: false,
                    // style: ,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 8.w, right: 16.r),
                        child: const Icon(Icons.search, color: Colors.black),
                      ),
                      prefixIconConstraints:
                          BoxConstraints(maxHeight: 24.r, maxWidth: 24.r),
                      hintText: "Search conversations",
                      // hintStyle: textFieldPlaceholderTextStyle(context),
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.grey,
                      focusedBorder: AppStyles.focusedTransparentBorder,
                      disabledBorder: AppStyles.focusedTransparentBorder,
                      enabledBorder: AppStyles.focusedTransparentBorder,
                      errorBorder: AppStyles.focusedTransparentBorder,
                      focusedErrorBorder: AppStyles.focusedTransparentBorder,
                      errorStyle: errorTextStyle(context),
                    ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    onSaved: (val) {},
                    onEditingComplete: () {},
                    onChanged: (val) {},
                    // validator: (val) {},
                    onTap: () {},
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Justin Wan",
                          style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                              fontSize: 28.sp,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        width: 45.r,
                        height: 45.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45.r),
                          color: AppColors.grey,
                        ),
                        child: SizedBox(
                          width: 24.r,
                          height: 24.r,
                          child: IconButton(
                            visualDensity:
                                VisualDensity.adaptivePlatformDensity,
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.phone,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 17.h),
                      Container(
                        width: 45.r,
                        height: 45.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45.r),
                          color: AppColors.grey,
                        ),
                        child: SizedBox(
                          width: 24.r,
                          height: 24.r,
                          child: IconButton(
                            visualDensity:
                                VisualDensity.adaptivePlatformDensity,
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.videocam,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
