import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page82 extends StatefulWidget {
  const Page82({super.key});

  @override
  State<Page82> createState() => _Page82State();
}

class _Page82State extends State<Page82> with SingleTickerProviderStateMixin {
  late final PageController pageController;
  late final TabController tabController;
  double value = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 1,
    );
    tabController = TabController(initialIndex: 1, length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text(
          'Message.me',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Work Sans',
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  pageController.animateToPage(0,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.decelerate);
                  tabController.animateTo(0);
                },
                icon: Icon(Icons.camera_alt),
              ),
              14.horizontalSpace,
              Expanded(
                child: TabBar(
                  controller: tabController,
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  indicatorWeight: 3,
                  onTap: (value) {
                    if (pageController.page != 1.0) {
                      pageController.animateToPage(1,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.decelerate);
                    }
                  },
                  tabs: [
                    Tab(
                      text: 'CHATS',
                    ),
                    Tab(
                      text: 'STATUS',
                    ),
                    Tab(
                      text: 'CALLS',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        controller: pageController,
        children: [
          Container(
            color: Colors.black,
          ),
          NotificationListener<OverscrollNotification>(
            onNotification: (notification) {
              if (notification.overscroll < 0) {
                debugPrint("Overscrolled to the left");

                pageController.animateTo(notification.dragDetails!.delta.dx,
                    duration: Duration(milliseconds: 200),
                    curve: Curves.decelerate);
              }
              return true;
            },
            child: TabBarView(
              controller: tabController,
              children: [
                Center(child: Text('Chats')),
                StatusList(),
                Center(child: Text('Calls')),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: OvalBorder(
                side: BorderSide(width: 2, color: Color(0xFF51AB9F)),
              ),
              child: Icon(Icons.edit),
            ),
            16.verticalSpace,
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(0xFF51AB9F),
              foregroundColor: Colors.white,
              child: Icon(Icons.camera_alt),
            ),
          ],
        ),
      ),
    );
  }
}

class StatusList extends StatelessWidget {
  const StatusList({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ListView(
      padding: EdgeInsets.all(14),
      children: [
        MyStatusCard(),
        Container(
          margin: EdgeInsets.only(
            left: width * 0.16,
          ),
          child: Divider(
            height: 28,
            color: Color(0xFFD0D0D0),
          ),
        ),
        14.verticalSpace,
        Row(
          children: [
            Text(
              'Recent updates',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Work Sans',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        9.verticalSpace,
        ...List.generate(4, (index) => StatusCard()),
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.h),
      child: Row(
        children: [
          Container(
            width: 60.w,
            height: 60.h,
            decoration: ShapeDecoration(
              color: Color(0xFFC4C4C4),
              shape: OvalBorder(
                side: BorderSide(width: 2, color: Color(0xFF262626)),
              ),
            ),
          ),
          12.horizontalSpace,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alison Kim',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                6.verticalSpace,
                Text(
                  'Today, 3:23 PM',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyStatusCard extends StatelessWidget {
  const MyStatusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 60.h,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 60.w,
                height: 60.h,
                decoration: ShapeDecoration(
                  color: Color(0xFFC4C4C4),
                  shape: OvalBorder(),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add_circle),
                ),
              ),
            ],
          ),
          12.horizontalSpace,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alison Kim',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                6.verticalSpace,
                Text(
                  'Today, 3:23 PM',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
