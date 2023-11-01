import 'package:flutter/material.dart';

class Page61 extends StatelessWidget {
  const Page61({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: false,
        elevation: 0,
        title: Container(
          width: 122,
          height: 15,
          decoration: ShapeDecoration(
            color: Color(0xFFA8A8A8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        actions: [
          Container(
            width: 30,
            height: 30,
            margin: EdgeInsets.only(
              right: 24,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFC4C4C4),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 110,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 8 : 0,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff525252),
                            width: 5.0,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xFFC4C4C4),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 50,
                        height: 10,
                        decoration: ShapeDecoration(
                          color: Color(0xFFA8A8A8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Color(0xFFC4C4C4),
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    width: 176,
                    height: 15,
                    decoration: ShapeDecoration(
                      color: Color(0xFFA8A8A8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 36,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 320,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 24),
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: ShapeDecoration(
                color: Color(0xFF525252),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 28,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                  mainAxisSpacing: 40,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) => Container(
                  decoration: ShapeDecoration(
                    color: Color(0xFFC4C4C4),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 55,
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: ShapeDecoration(
                color: Color(0xFFD0D0D0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // height: 81,
        padding: EdgeInsets.symmetric(
          horizontal: 28,
          vertical: 24,
        ),
        decoration: ShapeDecoration(
          color: Color(0xFF525252),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            4,
            (index) => Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFFC4C4C4),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
