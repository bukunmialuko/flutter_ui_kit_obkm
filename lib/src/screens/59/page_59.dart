import 'package:flutter/material.dart';

class Page59 extends StatelessWidget {
  const Page59({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 15,
          width: 122,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xffA8A8A8),
          ),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          margin: EdgeInsets.only(bottom: 36, top: 20),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffC4C4C4)),
              ),
              SizedBox(
                width: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    width: 183,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xffA8A8A8),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 15,
                    width: 244,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xffD0D0D0),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        separatorBuilder: (context, index) => Divider(
          color: Color(0xffD0D0D0),
          thickness: 1,
        ),
        itemCount: 4,
      ),
    );
  }
}
