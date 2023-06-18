import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/mobile_ui/40/chat_bubble.dart';
import 'package:google_fonts/google_fonts.dart';

class Page40 extends StatelessWidget {
  const Page40({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(
            left: 24.w,
          ),
          child: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "John Doe",
            ),
            Text(
              "Respond time: 1 hour",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 10.sp,
                height: 1.02.h,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        titleTextStyle: TextStyle(
          fontFamily: GoogleFonts.workSans().fontFamily,
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          height: 1.07.h,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24.0.w),
            child: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              ChatBubble(
                message:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie.",
                receive: true,
              ),
              ChatBubble(
                message:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie fermentum porttitor diam purus ",
                receive: true,
              ),
              ChatBubble(
                message:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie.",
              ),
              ChatBubble(
                message:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie fermentum porttitor diam purus ",
              ),
            ],
          )),
          Container(
            width: double.infinity,
            // height: 50.h,
            padding: EdgeInsets.only(
              left: 10.w,
              right: 10.w,
              top: 7.w,
              bottom: 20.h,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.camera_alt,
                ),
                SizedBox(
                  width: 10.h,
                ),
                Icon(
                  Icons.photo,
                ),
                SizedBox(
                  width: 10.h,
                ),
                Expanded(
                  child: TextField(
                    style: TextStyle(
                      fontFamily: GoogleFonts.workSans().fontFamily,
                      color: Color(0xff525252),
                      fontSize: 12.sp,
                      height: 1.14.h,
                      fontWeight: FontWeight.normal,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      fillColor: Color(0xffD0D0D0),
                      hintText: "Enter Message",
                      hintStyle: TextStyle(
                        fontFamily: GoogleFonts.workSans().fontFamily,
                        color: Color(0xff525252),
                        fontSize: 12.sp,
                        height: 1.14.h,
                        fontWeight: FontWeight.normal,
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 19.w,
                      ),
                    ),
                    // maxLines: ,
                  ),
                ),
                SizedBox(
                  width: 10.h,
                ),
                Icon(Icons.insert_emoticon),
                SizedBox(
                  width: 10.h,
                ),
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff525252),
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
