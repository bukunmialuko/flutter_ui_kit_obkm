import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/40/custom_shape.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.message,
    this.receive = false,
  });

  final String message;
  final bool receive;

  @override
  Widget build(BuildContext context) {
    final recieve = [
      _buildReceiveBubble(message),
      SizedBox(
        child: Center(
          child: Text("16:25"),
        ),
      ),
    ];
    return Padding(
      padding: EdgeInsets.only(
          right: receive ? 50.w : 18.w,
          left: receive ? 18.w : 50.w,
          top: 3,
          bottom: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          if (receive) ...recieve,
          if (!receive) ...[
            SizedBox(
              child: Center(
                child: Text("16:25"),
              ),
            ),
            _buildSendBubble(message),
          ],
        ],
      ),
    );
  }

  Widget _buildSendBubble(String message) {
    return Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            width: 233.w,
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Color(0xff262626),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
        CustomPaint(
          painter: CustomShape(Color(0xff262626)),
        ),
      ],
    ));
  }

  Widget _buildReceiveBubble(String message) {
    return Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 36,
          height: 36,
          margin: EdgeInsets.only(right: 9),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.png.m40.avatar.provider(),
            ),
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(math.pi),
          child: CustomPaint(
            painter: CustomShape(Colors.grey.shade300),
          ),
        ),
        Flexible(
          child: Container(
            width: 233.w,
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
        ),
      ],
    ));
  }
}
