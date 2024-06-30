import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/res/colors.dart';
import 'package:go_router/go_router.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    int columns = 5;
    if (width >= 600) {
      columns = 7;
    }
    if (width >= 1200) {
      columns = 10;
    }

    return Scaffold(
      backgroundColor: AppColors.darkScaffoldBg,
      appBar: AppBar(
        title: Text(
          "Flutter Ui Kit",
          style: TextStyle(color: AppColors.white),
        ),
        backgroundColor: AppColors.darkScaffoldBg,
        surfaceTintColor: AppColors.darkScaffoldBg,
        elevation: 0,
      ),
      body: GridView.count(
        crossAxisCount: columns,
        children: List.generate(
          103,
          (index) {
            return GridTile(
              child: GestureDetector(
                onTap: () {
                  context.push("/pg${index + 1}");
                },
                child: Container(
                  margin: EdgeInsets.all(4.0),
                  color: Color(0xff525252),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
