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
            )
          ],
        ),
      ),
    );
  }
}
