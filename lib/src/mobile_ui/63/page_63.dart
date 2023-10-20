import 'package:flutter/material.dart';

class Page63 extends StatelessWidget {
  const Page63({super.key});

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
        padding: EdgeInsets.only(top: 8),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 332,
                height: 332,
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            for (int i = 0; i <= 5; i++)
              Container(
                height: 95,
                margin: EdgeInsets.only(top: i == 0 ? 16 : 0, bottom: 12),
                padding: EdgeInsets.symmetric(horizontal: 29, vertical: 20),
                decoration: ShapeDecoration(
                  color: Color(0xFF525252),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFFC4C4C4),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 202,
                          height: 10,
                          decoration: ShapeDecoration(
                            color: Color(0xFFA8A8A8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Container(
                          width: 141,
                          height: 10,
                          decoration: ShapeDecoration(
                            color: Color(0xFFA8A8A8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
