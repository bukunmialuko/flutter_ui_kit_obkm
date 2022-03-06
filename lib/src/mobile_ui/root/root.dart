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
        title: Text("Flutter UiKit"),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8.h),
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
            )
          ],
        ),
      ),
    );
  }
}
