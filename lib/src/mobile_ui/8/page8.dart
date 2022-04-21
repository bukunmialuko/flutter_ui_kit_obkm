import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/navigation/navigation_service.dart';
import 'package:flutter_ui_kit_obkm/src/res/assets.dart';
import 'package:flutter_ui_kit_obkm/src/res/colors.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class Page8 extends StatefulWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  _Page8State createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  List<String> cards = [Assets.PG8_CARD1, Assets.PG8_CARD2];
  List<Page8Model> models = [
    Page8Model("30.12", "Subscription"),
    Page8Model("70.00", "Grocery"),
    Page8Model("170.00", "Education")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 24.h, right: 24.h, top: 20.h, bottom: 25.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Balance",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.visibility,
                            size: 16.r,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "USD \$2300.00",
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      GetIt.I.get<NavigationService>().back();
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Container(
                        width: 48.r,
                        height: 48.r,
                        color: AppColors.greyC4,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 5.h,
              color: const Color(0xffD0D0D0),
            ),
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, top: 18.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Cards",
                          style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        SizedBox(
                          height: 222.h,
                          child: ListView.separated(
                            padding: EdgeInsets.zero,
                            physics: const BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            scrollDirection: Axis.horizontal,
                            itemCount: cards.length + 1,
                            itemBuilder: (c, i) {
                              if (i == 0) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RotatedBox(
                                      quarterTurns: 3,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffF4F4F4),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(48.r),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black
                                                  .withOpacity(0.25),
                                              spreadRadius: 0,
                                              blurRadius: 8,
                                              offset: const Offset(0,
                                                  4), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: const Text("Add a card"),
                                        margin: EdgeInsets.only(top: 16.w),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.w, vertical: 8.h),
                                      ),
                                    )
                                  ],
                                );
                              }

                              ///Todo: This area needs to be improved
                              return Center(
                                child: Container(
                                  padding: EdgeInsets.zero,
                                  width: 159.w,
                                  // height: 222.h,
                                  decoration: const BoxDecoration(
                                      // color: Colors.black,
                                      // image: DecorationImage(
                                      //     image: AssetImage(cards[i - 1]),
                                      //     fit: BoxFit.cover),
                                      // borderRadius: BorderRadius.all(
                                      //   Radius.circular(8.r),
                                      // ),
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //     color: Colors.black.withOpacity(0.25),
                                      //     spreadRadius: 0,
                                      //     blurRadius: 6.r,
                                      //     offset: const Offset(
                                      //         0, 4), // changes position of shadow
                                      //   ),
                                      // ],
                                      ),
                                  child: Container(
                                    // width: 159.w,
                                    // height: 222.h,
                                    decoration: BoxDecoration(
                                      // color: Colors.black,
                                      image: DecorationImage(
                                          image: AssetImage(cards[i - 1]),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              if (index == 0) {
                                return SizedBox(
                                  width: 31.w,
                                );
                              }
                              return SizedBox(
                                width: 20.w,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  DraggableScrollableSheet(
                      // initialChildSize: 0.4,
                      minChildSize: 0.4,
                      maxChildSize: 0.8,
                      builder: (c, scrollController) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24.r),
                              topRight: Radius.circular(24.r),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    const Color(0xffC4C4C4).withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 8,
                                offset: const Offset(
                                    0, -4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: SingleChildScrollView(
                            controller: scrollController,
                            physics: const BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50.w,
                                      height: 4.h,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff262626),
                                          borderRadius:
                                              BorderRadius.circular(50.r)),
                                      margin: EdgeInsets.only(top: 21.h),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 24.w,
                                          right: 24.w,
                                          bottom: 25.h,
                                          top: 25.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Recent transaction",
                                            style: GoogleFonts.workSans(
                                              textStyle: TextStyle(
                                                fontSize: 20.sp,
                                                color: Colors.black,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                ListView.separated(
                                  shrinkWrap: true,
                                  controller: scrollController,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (c, i) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        left: 24.w,
                                        right: 23.w,
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              child: Container(
                                                width: 64.r,
                                                height: 64.r,
                                                color: AppColors.greyC4,
                                              ),
                                            ),
                                            SizedBox(width: 30.w),
                                            Expanded(
                                              flex: 3,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Transaction #${i + 1}"),
                                                  Text(
                                                    "\$ ${models[i].price}",
                                                    style: GoogleFonts.workSans(
                                                      textStyle: TextStyle(
                                                        fontSize: 28.sp,
                                                        color: Colors.black,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                                flex: 2,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff262626),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(48.r),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        models[i].buttonText,
                                                        style: GoogleFonts
                                                            .workSans(
                                                          textStyle: TextStyle(
                                                            fontSize: 10.sp,
                                                            color: Colors.white,
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                      margin: EdgeInsets.only(
                                                          top: 16.w),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 16.w,
                                                              vertical: 8.h),
                                                    ),
                                                  ],
                                                )),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (c, i) {
                                    return SizedBox(
                                      height: 18.h,
                                    );
                                  },
                                  itemCount: models.length,
                                )
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Page8Model {
  final String price;
  final String buttonText;

  Page8Model(this.price, this.buttonText);
}
