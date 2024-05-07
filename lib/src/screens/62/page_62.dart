import 'package:flutter/material.dart';

class Page62 extends StatelessWidget {
  const Page62({super.key});

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
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 12,
        ),
        child: Column(
          children: [
            Container(
              height: 60,
              decoration: ShapeDecoration(
                color: Color(0xFFD0D0D0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.only(
                  top: 30,
                ),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 43,
                  mainAxisSpacing: 22,
                  mainAxisExtent: 250,
                ),
                itemBuilder: (context, index) => Container(
                  // width: 150,
                  // height: 248,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 23,
                  ),
                  decoration: ShapeDecoration(
                    color: Color(0xFF525252),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        // width: 120,
                        height: 15,
                        decoration: ShapeDecoration(
                          color: Color(0xFFA8A8A8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFFC4C4C4),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Container(
                              height: 15,
                              decoration: ShapeDecoration(
                                color: Color(0xFFA8A8A8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFFC4C4C4),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Container(
                              height: 15,
                              decoration: ShapeDecoration(
                                color: Color(0xFFA8A8A8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
