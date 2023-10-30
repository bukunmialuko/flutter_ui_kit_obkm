import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page83 extends StatefulWidget {
  const Page83({super.key});

  @override
  State<Page83> createState() => _Page83State();
}

class _Page83State extends State<Page83> with SingleTickerProviderStateMixin {
  late final PageController pageController;
  late final TabController tabController;
  double value = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 1,
    );
    tabController = TabController(initialIndex: 2, length: 3, vsync: this);
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
                Center(child: Text('Status')),
                CallList(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF51AB9F),
          foregroundColor: Colors.white,
          child: Icon(Icons.phone_forwarded),
        ),
      ),
    );
  }
}

class CallList extends StatelessWidget {
  const CallList({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ListView.separated(
      padding: EdgeInsets.all(14),
      itemBuilder: (context, index) => CallCard(
        index: index,
      ),
      itemCount: 6,
      separatorBuilder: (context, index) => Container(
        margin: EdgeInsets.only(
          left: width * 0.16,
        ),
        child: Divider(
          height: 28,
          color: Color(0xFFD0D0D0),
        ),
      ),
    );
  }
}

class CallCard extends StatelessWidget {
  const CallCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 60.h,
      child: Row(
        children: [
          Container(
            width: 60.w,
            height: 60.h,
            decoration: ShapeDecoration(
              color: Color(0xFFC4C4C4),
              shape: OvalBorder(),
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
                Row(
                  children: [
                    Transform.rotate(
                        angle: index >= 2 ? (-math.pi / 4) : (math.pi / 1.3),
                        child: Icon(Icons.arrow_right_alt)),
                    4.horizontalSpace,
                    Text(
                      'Today, 3:23 PM',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(index == 0 ? Icons.videocam : Icons.phone))
        ],
      ),
    );
  }
}
