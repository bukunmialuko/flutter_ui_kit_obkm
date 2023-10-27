import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final Color sentColor = Color(0xff007AFF);
final Color receiveColor = Color(0xff262626);

class Triangle extends CustomPainter {
  final Color bgColor;

  Triangle(this.bgColor);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = bgColor;

    var path = Path();
    path.lineTo(0, -15);
    path.lineTo(15, 0);
    path.lineTo(0, -2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class SentMessage extends StatelessWidget {
  const SentMessage({
    Key? key,
    required this.message,
    required this.time,
  }) : super(key: key);

  final String message;
  final String time;

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: sentColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: Text(
              message,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Work Sans',
                fontSize: 14,
              ),
            ),
          ),
        ),
        CustomPaint(painter: Triangle(sentColor)),
      ],
    ));

    return Padding(
      padding:
          EdgeInsets.only(right: 18.0.w, left: 20.w, top: 5.h, bottom: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 40.h),
          Text(
            time,
            style: TextStyle(
              fontFamily: "Work Sans",
              fontSize: 12,
            ),
          ),
          17.horizontalSpace,
          messageTextGroup,
        ],
      ),
    );
  }
}

class ReceivedMessage extends StatelessWidget {
  const ReceivedMessage({
    Key? key,
    required this.message,
    required this.time,
  }) : super(key: key);

  final String message;
  final String time;

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(math.pi),
          child: CustomPaint(
            painter: Triangle(receiveColor),
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: receiveColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(18),
                topLeft: Radius.circular(18),
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Text(
              message,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Work Sans',
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    ));

    return Padding(
      padding: EdgeInsets.only(right: 50.0, left: 18, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          messageTextGroup,
          17.horizontalSpace,
          Text(
            time,
            style: TextStyle(
              fontFamily: "Work Sans",
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
