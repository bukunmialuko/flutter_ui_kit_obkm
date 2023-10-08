import 'package:flutter/material.dart';

class Page60 extends StatelessWidget {
  const Page60({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Container(
          width: 122,
          height: 15,
          decoration: BoxDecoration(
            color: Color(0xFFA8A8A8),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Color(0xFFC4C4C4),
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: ShapeDecoration(
                        color: Color(0xFFC4C4C4),
                        shape: OvalBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: 122,
                      height: 15,
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
            ],
          ),
          SizedBox(
            height: 43,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                3,
                (index) => SizedBox(
                  child: Column(
                    children: [
                      Container(
                        width: 63,
                        height: 63,
                        decoration: ShapeDecoration(
                          color: Color(0xFFC4C4C4),
                          shape: OvalBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 60,
                        height: 15,
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
          ),
          SizedBox(
            height: 45,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                right: 31,
                left: 31,
                top: 32,
              ),
              decoration: ShapeDecoration(
                color: Color(0xFFF4F4F4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Column(
                children: List.generate(
                  4,
                  (index) => Container(
                    margin: EdgeInsets.only(top: index == 0 ? 0 : 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
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
                                width: 24,
                              ),
                              Container(
                                width: 122,
                                height: 15,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFA8A8A8),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
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
