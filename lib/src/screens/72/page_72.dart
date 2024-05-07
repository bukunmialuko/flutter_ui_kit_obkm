import 'package:flutter/material.dart';

class Page72 extends StatelessWidget {
  const Page72({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            ...List.generate(
              3,
              (index) => Container(
                margin: EdgeInsets.only(bottom: 20, left: 8, right: 8),
                padding: EdgeInsets.only(bottom: 24),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0xffD0D0D0)),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'G-7 finance ministers strike landmark deal on taxing multinationals, tech giants',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Work Sans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(color: Color(0xFFC4C4C4)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Author Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Work Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'May 20 · 5 min read',
                              style: TextStyle(
                                color: Color(0xFFA8A8A8),
                                fontSize: 12,
                                fontFamily: 'Work Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.bookmark_border),
                            const SizedBox(width: 24),
                            Icon(Icons.more_vert),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(color: Color(0xFFF4F4F4)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New for you',
                        style: TextStyle(
                          color: Color(0xFFFF832B),
                          fontSize: 18,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Customize',
                            style: TextStyle(
                              color: Color(0xFF262626),
                              fontSize: 12,
                              fontFamily: 'Work Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            height: 15,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'See all',
                            style: TextStyle(
                              color: Color(0xFF262626),
                              fontSize: 12,
                              fontFamily: 'Work Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    children: List.generate(
                      5,
                      (index) => Container(
                        margin: EdgeInsets.only(right: 16),
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: ShapeDecoration(
                                color: Color(0xFF525252),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: 15,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 3,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: index == 0
                                        ? Color(0xFFA8A8A8)
                                        : Colors.transparent,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 90,
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.symmetric(horizontal: 21, vertical: 16),
              decoration: BoxDecoration(
                color: Color(0xFFD0D0D0),
              ),
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Author name',
                    style: TextStyle(
                      color: Color(0xFF262626),
                      fontSize: 18,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.arrow_circle_right_outlined)
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
