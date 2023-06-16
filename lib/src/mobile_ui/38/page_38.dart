import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page38 extends StatelessWidget {
  const Page38({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(
            left: 24.w,
          ),
          child: Icon(
            Icons.menu_open_rounded,
            color: Colors.black,
            size: 24.w,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: DefaultTabController(
        length: 4,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
            ),
            child: Column(
              children: [
                Text(
                  "This is a cool headine, write something here...",
                  style: TextStyle(
                    fontSize: 24.sp,
                    height: 1.25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                    top: BorderSide(
                      color: Color(0xffD0D0D0),
                    ),
                  )),
                  child: TabBar(
                    indicator: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Color(0xff262626),
                          width: 3.w,
                        ),
                      ),
                    ),
                    labelColor: Colors.black,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                      height: 1.17,
                    ),
                    labelPadding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                    ),
                    tabs: [
                      Tab(
                        text: 'Latest',
                      ),
                      Tab(
                        text: "Design",
                      ),
                      Tab(
                        text: 'Business',
                      ),
                      Tab(
                        text: 'Development',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  height: 210.h,
                  color: Color(0xffC4C4C4C4),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Divider(
                  color: Color(0xFFD0D0D0),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  "Power of Oscars keeps Romanian ‘Collective’ tragedy in people’s minds, says director",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.3.h,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Divider(
                  color: Color(0xFFD0D0D0),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci neque pulvinar in lacus, quis pulvinar penatibus viverra condimentum. Id vitae malesuada viverra amet. Vitae id velit lorem proin pellentesque sed. Orci elementum facilisis neque placerat laoreet libero at at. Vitae id velit lorem proin pellentesque sed. Orci elementum.",
                  style: TextStyle(
                    fontSize: 12.sp,
                    height: 1.5.h,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "#somethingcool",
                            style: TextStyle(
                              fontSize: 12.sp,
                              height: 1.5,
                              color: Color(0xffA8A8A8),
                            ),
                          ),
                          Text(
                            "#somethingcool1",
                            style: TextStyle(
                              fontSize: 12.sp,
                              height: 1.5,
                              color: Color(0xffA8A8A8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80.w,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 15.w,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffc4c4c4),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.chat,
                        size: 20.w,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
