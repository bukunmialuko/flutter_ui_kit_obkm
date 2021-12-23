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
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(24.w, 44.h, 26.w, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.r),
                    topRight: Radius.circular(24.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xffC4C4C4).withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: const Offset(0, -4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(child: Container()),
                    Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        color: AppColors.grey,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 25.r),
                          Expanded(
                            child: TextFormField(
                              readOnly: true, //false
                              autofocus: false,
                              // style: ,
                              decoration: InputDecoration(
                                hintText: "Aa",
                                // hintStyle: textFieldPlaceholderTextStyle(context),
                                isDense: true,
                                filled: true,
                                fillColor: AppColors.grey,
                                focusedBorder:
                                    AppStyles.focusedTransparentBorder,
                                disabledBorder:
                                    AppStyles.focusedTransparentBorder,
                                enabledBorder:
                                    AppStyles.focusedTransparentBorder,
                                errorBorder: AppStyles.focusedTransparentBorder,
                                focusedErrorBorder:
                                    AppStyles.focusedTransparentBorder,
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
                          ),
                          Container(
                            width: 45.r,
                            height: 45.r,
                            margin: EdgeInsets.symmetric(horizontal: 2.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45.r),
                              color: const Color(0xffF4F4F4),
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
                                  Icons.send,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
