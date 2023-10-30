import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page85 extends StatelessWidget {
  const Page85({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Ramdom ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: 'Talk',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Color(0xFFDA1E28),
            tabs: [
              Tab(
                text: "Newest",
              ),
              Tab(
                text: "Trending",
              ),
              Tab(
                text: "Most Viewed",
              ),
            ],
          ),
        ),
        body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
          itemBuilder: (BuildContext context, int index) => Container(
            width: 366,
            height: 200,
            decoration: ShapeDecoration(
              color: Color(0x7FC4C4C4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
            ),
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 7.h),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Author name',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        width: 281,
                        child: Text(
                          'Biden Ends Infrastructure Talks With Senate GOP Group, Saying Its Plan Fell Short',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.more_vert),
                    24.verticalSpace,
                    Text(
                      '12:10',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          itemCount: 4,
          separatorBuilder: (BuildContext context, int index) =>
              16.verticalSpace,
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            selectedItemColor: Colors.red,
            unselectedItemColor: Color(0xffA8A8A8),
            showSelectedLabels: false,
            // type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.control_point_duplicate),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.cast_connected),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.horizontal_split),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.perm_contact_cal),
                label: "",
              ),
            ]),
      ),
    );
  }
}
