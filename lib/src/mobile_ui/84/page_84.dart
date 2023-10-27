import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/84/widgets/bubble.dart';

class Page84 extends StatelessWidget {
  const Page84({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: false,
        titleSpacing: 0,
        title: Row(
          children: [
            Container(
              width: 36.w,
              height: 36.w,
              decoration: ShapeDecoration(
                color: Color(0xffC4C4C4),
                shape: OvalBorder(),
              ),
            ),
            8.horizontalSpace,
            Text("Alison Kim"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SentMessage(
                  message:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh integer massa risus est feugiat fames viverra. Sed molestie risus, odio a mi scelerisque. Tincidunt nullam arcu cursus lobortis enim amet. Quis amet a, in aliquam pellentesque.",
                  time: "1:31 PM",
                ),
                ReceivedMessage(
                  message:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh integer massa risus est feugiat fames viverra. ",
                  time: "1:32 PM",
                ),
                SentMessage(
                  message:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh integer massa risus est feugiat fames viverra. Sed molestie risus, odio a mi scelerisque. Tincidunt nullam arcu cursus lobortis enim amet. Quis amet a, in aliquam pellentesque.",
                  time: "1:35 PM",
                ),
              ],
            ),
          ),
          Container(
            // height: 70.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),
            color: Colors.grey.shade300,
            child: SafeArea(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.camera_alt,
                      size: 24.w,
                    ),
                  ),
                  16.horizontalSpace,
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.photo,
                      size: 24.w,
                    ),
                  ),
                  4.horizontalSpace,
                  Expanded(
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: "Type a message...",
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  4.horizontalSpace,
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.insert_emoticon,
                      size: 24.w,
                    ),
                  ),
                  11.horizontalSpace,
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 40.w,
                      height: 40.w,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                          shape: OvalBorder(), color: Color(0xff007AFF)),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 24.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
