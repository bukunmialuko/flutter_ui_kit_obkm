import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Page27 extends StatefulWidget {
  const Page27({Key? key}) : super(key: key);

  @override
  State<Page27> createState() => _Page27State();
}

class _Page27State extends State<Page27> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 39.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Workouts',
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.workSans().fontFamily,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: Container(
                        height: 40.w,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Container(
                height: 50.h,
                width: size.width / 1.5,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFD0D0D0),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16.r),
                    bottomRight: Radius.circular(16.r),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Workout name #1',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.workSans().fontFamily,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: size.width,
                height: size.height / 1.5,
                // color: Colors.green,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 20.w),
                      ListView.separated(
                        itemCount: 2,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 20.w);
                        },
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              context.pop();
                            },
                            child: WorkoutCard(),
                          );
                        },
                      ),
                      SizedBox(width: 20.w),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90.h,
        decoration: BoxDecoration(color: Colors.white, border: Border.all(color: const Color(0xffE0E0E0))),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 54.w, right: 54.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Assets.svg.m6.motionPhotosPause.svg(
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
                Assets.svg.m6.castConnected.svg(
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
                Assets.svg.m6.debug.svg(
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
                Assets.svg.m6.contact.svg(
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WorkoutCard extends StatelessWidget {
  const WorkoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: 300.w,
      height: size.height / 1.6,
      decoration: BoxDecoration(
        // color: Color(0xffD0D0D0),
        borderRadius: BorderRadius.circular(16.r),
        image: DecorationImage(
          image: Assets.png.m27.gym.image().image,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            // height: 85.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            decoration: BoxDecoration(
              color: Color(0xFFD0D0D0).withOpacity(0.9),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.r),
                bottomRight: Radius.circular(16.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Workout name #1',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                Text(
                  '15 min',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
