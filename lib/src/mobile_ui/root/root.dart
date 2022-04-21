import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/routes/routes.dart';
import 'package:flutter_ui_kit_obkm/src/navigation/navigation_service.dart';
import 'package:get_it/get_it.dart';

import 'widgets/page_button_widget.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Ui Kit"),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8.h, left: 8.w),
        child: Wrap(
          spacing: 18.w,
          runSpacing: 18.h,
          children: [
            /// 1 - 20

            PageButtonWidget(
              page: 1,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg1);
              },
            ),
            PageButtonWidget(
              page: 2,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg2);
              },
            ),
            PageButtonWidget(
              page: 3,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg3);
              },
            ),
            PageButtonWidget(
              page: 4,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg4);
              },
            ),
            PageButtonWidget(
              page: 5,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg5);
              },
            ),
            PageButtonWidget(
              page: 6,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg6);
              },
            ),
            PageButtonWidget(
              page: 7,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg7);
              },
            ),
            PageButtonWidget(
              page: 8,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg8);
              },
            ),
            PageButtonWidget(
              page: 9,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg9);
              },
            ),
            PageButtonWidget(
              page: 10,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg10);
              },
            ),
            PageButtonWidget(
              page: 11,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg11);
              },
            ),
            PageButtonWidget(
              page: 12,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg12);
              },
            ),
            PageButtonWidget(
              page: 13,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg13);
              },
            ),
            PageButtonWidget(
              page: 14,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg14);
              },
            ),
            PageButtonWidget(
              page: 15,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg15);
              },
            ),
            PageButtonWidget(
              page: 16,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg16);
              },
            ),
            PageButtonWidget(
              page: 17,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg17);
              },
            ),
            PageButtonWidget(
              page: 18,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg18);
              },
            ),
            PageButtonWidget(
              page: 19,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg19);
              },
            ),
            PageButtonWidget(
              page: 20,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg20);
              },
            ),

            /// 21 - 40

            PageButtonWidget(
              page: 21,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg21);
              },
            ),
            PageButtonWidget(
              page: 24,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg24);
              },
            ),
            PageButtonWidget(
              page: 25,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg25);
              },
            ),
            PageButtonWidget(
              page: 26,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg26);
              },
            ),
            PageButtonWidget(
              page: 27,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg27);
              },
            ),
            PageButtonWidget(
              page: 28,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg28);
              },
            ),
            PageButtonWidget(
              page: 29,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg29);
              },
            ),
            PageButtonWidget(
              page: 32,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg32);
              },
            ),

            PageButtonWidget(
              page: 33,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg33);
              },
            ),
            PageButtonWidget(
              page: 34,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg34);
              },
            ),

            /// 41 - 60
            ///
            PageButtonWidget(
              page: 42,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg42);
              },
            ),

            PageButtonWidget(
              page: 44,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg44);
              },
            ),

            PageButtonWidget(
              page: 45,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg45);
              },
            ),

            PageButtonWidget(
              page: 48,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg48);
              },
            ),

            PageButtonWidget(
              page: 49,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg49);
              },
            ),

            PageButtonWidget(
              page: 51,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg51);
              },
            ),

            PageButtonWidget(
              page: 52,
              onPressed: () {
                GetIt.I
                    .get<NavigationService>()
                    .to(routeName: MobileRoutes.pg52);
              },
            ),
          ],
        ),
      ),
    );
  }
}
