import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page104 extends StatefulWidget {
  const Page104({super.key});

  @override
  State<Page104> createState() => Page104State();
}

class Page104State extends State<Page104> {
  List<String> choises = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: LinearProgressIndicator(
          color: Color(0xff24A148),
          backgroundColor: Color(0xffD0D0D0),
          minHeight: 7,
          value: 0.3,
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'WHAT IS YOUR FITNESS GOAL?',
              style: GoogleFonts.workSans(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 28.sp,
              ),
            ),
            14.verticalSpace,
            Text(
              'Knowing your goal helps us tailor your experience',
              style: GoogleFonts.workSans(
                fontSize: 14.sp,
                color: Color(0xffA8A8A8),
              ),
            ),
            29.verticalSpace,
            GoalCard(
              isChosen: choises.contains('1'),
              value: '1',
              title: 'Get Fit',
              icon: Icons.fitness_center,
              onChoosen: (String value) {
                setState(() {
                  if (choises.contains('1')) {
                    choises.removeWhere((value) => value == '1');
                  } else {
                    choises.add('1');
                  }
                });
              },
            ),
            16.verticalSpace,
            GoalCard(
              isChosen: choises.contains('2'),
              value: '2',
              title: 'Lose Weight',
              icon: Icons.line_weight,
              onChoosen: (String value) {
                setState(() {
                  if (choises.contains('2')) {
                    choises.removeWhere((value) => value == '2');
                  } else {
                    choises.add('2');
                  }
                });
              },
            ),
            16.verticalSpace,
            GoalCard(
              isChosen: choises.contains('3'),
              value: '3',
              title: 'Build Muscle',
              icon: Icons.healing,
              onChoosen: (String value) {
                setState(() {
                  if (choises.contains('3')) {
                    choises.removeWhere((value) => value == '3');
                  } else {
                    choises.add('3');
                  }
                });
              },
            ),
            16.verticalSpace,
            GoalCard(
              isChosen: choises.contains('4'),
              value: '4',
              title: 'Stay Healthy',
              icon: Icons.explore,
              onChoosen: (String value) {
                setState(() {
                  if (choises.contains('4')) {
                    choises.removeWhere((value) => value == '4');
                  } else {
                    choises.add('4');
                  }
                });
              },
            ),
            29.verticalSpace,
            Text(
              '**Icons are chosen randomly',
              style: GoogleFonts.workSans(
                fontSize: 14.sp,
                color: Color(0xffA8A8A8),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 90.h,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 24.w),
        alignment: Alignment.center,
        child: Container(
          height: 56.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(64.r),
            color: Colors.black,
          ),
          alignment: Alignment.center,
          child: Text(
            'CONTINUE',
            style: GoogleFonts.workSans(
              fontSize: 16.sp,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class GoalCard extends StatelessWidget {
  const GoalCard({
    super.key,
    required this.isChosen,
    required this.value,
    required this.title,
    required this.icon,
    required this.onChoosen,
  });

  final bool isChosen;
  final String value;
  final String title;
  final IconData icon;
  final ValueChanged<String> onChoosen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChoosen(value),
      behavior: HitTestBehavior.opaque,
      child: Container(
        key: Key('goal_$value'),
        decoration: BoxDecoration(
          border: Border.all(
            color: isChosen ? Color(0xff005819) : Colors.black,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.w),
        child: Row(
          children: [
            Icon(
              icon,
              color: isChosen ? Color(0xff005819) : Colors.black,
            ),
            8.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.workSans(
                      fontSize: 18.sp,
                      color: Color(0xff262626),
                    ),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur ',
                    style: GoogleFonts.workSans(
                      fontSize: 13.sp,
                      color: Color(0xffA8A8A8),
                    ),
                  ),
                ],
              ),
            ),
            16.horizontalSpace,
            Container(
              width: 20.w,
              height: 20.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isChosen ? Color(0xff005819) : Colors.black,
                ),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 10.w,
                height: 10.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isChosen ? Color(0xff005819) : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
