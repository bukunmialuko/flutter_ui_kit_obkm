import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/colors.gen.dart';
import 'package:flutter_ui_kit_obkm/src/res/styles.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

final List<String> names = [
  "Justin Wan",
  "Eathan Kwan",
  "Tannzz Wan",
  "Cecily Wan",
  "Oscar Wan",
  "Bukunmi Aluko",
  "John Doe",
  "Lorem Master",
  "Elon Musk",
  "Bill Gates",
  "Jeff Bezos"
];

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(24.w, 54.h, 24.w, 29.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "Contacts",
                          style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                              fontSize: 24.sp,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 24.r,
                        height: 24.r,
                        child: IconButton(
                          visualDensity: VisualDensity.adaptivePlatformDensity,
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            context.pop();
                          },
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 22.h),
                  TextFormField(
                    autofocus: false,
                    // style: ,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: const Icon(Icons.search, color: Colors.black),
                      ),
                      prefixIconConstraints:
                          BoxConstraints(maxHeight: 20.w, maxWidth: 35.w),
                      hintText: "Contacts",
                      // hintStyle: textFieldPlaceholderTextStyle(context),
                      isDense: true,
                      filled: true,
                      fillColor: ColorName.grayC4,
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
                  SizedBox(height: 30.h),
                  _LastContacted()
                ],
              ),
            ),
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
                child: ListView.separated(
                  itemCount: names.length,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemBuilder: (c, i) {
                    return _ListItem(
                      name: names[i],
                    );
                  },
                  separatorBuilder: (c, i) {
                    return SizedBox(height: 24.h);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  final String name;
  const _ListItem({required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340.w,
      height: 60.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Container(
              width: 60.h,
              height: 60.h,
              color: ColorName.grayC4,
            ),
          ),
          SizedBox(width: 14.w),
          Expanded(
            child: SizedBox(
              height: 60.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "14:23",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xffA8A8A8),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  3.verticalSpace,
                  Flexible(
                    child: Text(
                      "Lorem Ipsum",
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _LastContacted extends StatelessWidget {
  const _LastContacted();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Last Contacted",
          style: GoogleFonts.workSans(
            textStyle: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 24.h),
        SizedBox(
          height: 60.r,
          width: 359.w,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            scrollDirection: Axis.horizontal,
            itemCount: names.length,
            itemBuilder: (c, i) {
              return SizedBox(
                width: 59.r,
                height: 59.r,
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Container(
                          width: 56.r,
                          height: 56.r,
                          color: ColorName.grayC4,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 18.r,
                        height: 18.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.r),
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 16.w,
              );
            },
          ),
        ),
      ],
    );
  }
}
