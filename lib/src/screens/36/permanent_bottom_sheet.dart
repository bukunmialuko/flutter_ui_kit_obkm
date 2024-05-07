import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PermanentBottomSheetWidget extends StatelessWidget {
  const PermanentBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 36.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.w),
          topRight: Radius.circular(24.w),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: Offset(0, 4.0),
            blurRadius: 16.0,
          ),
        ],
        color: Color(0xfff4f4f4),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Change Card",
              style: TextStyle(
                fontSize: 12.w,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          _buildSpaceH(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildSpaceW(),
                Container(
                  width: 65.w,
                  height: 65.w,
                  decoration: BoxDecoration(
                    color: Color(0xffc4c4c4),
                    borderRadius: BorderRadius.circular(16.w),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.camera_enhance_rounded,
                      size: 24.w,
                    ),
                  ),
                ),
                _buildSpaceW(),
                Container(
                  width: 65.w,
                  height: 65.w,
                  decoration: BoxDecoration(
                    color: Color(0xffc4c4c4),
                    borderRadius: BorderRadius.circular(16.w),
                  ),
                  child: Stack(
                    children: [
                      SizedBox.expand(),
                      Positioned(
                        right: 12,
                        top: 10,
                        child: Icon(
                          Icons.radio_button_checked_rounded,
                          size: 14.w,
                        ),
                      ),
                    ],
                  ),
                ),
                _buildSpaceW(),
                Container(
                  width: 65.w,
                  height: 65.w,
                  decoration: BoxDecoration(
                    color: Color(0xffc4c4c4),
                    borderRadius: BorderRadius.circular(16.w),
                  ),
                  child: Stack(
                    children: [
                      SizedBox.expand(),
                      Positioned(
                        right: 12,
                        top: 10,
                        child: Icon(
                          Icons.radio_button_checked_rounded,
                          size: 14.w,
                        ),
                      ),
                    ],
                  ),
                ),
                _buildSpaceW(),
                Container(
                  width: 65.w,
                  height: 65.w,
                  decoration: BoxDecoration(
                    color: Color(0xffc4c4c4),
                    borderRadius: BorderRadius.circular(16.w),
                  ),
                  child: Stack(
                    children: [
                      SizedBox.expand(),
                      Positioned(
                        right: 12,
                        top: 10,
                        child: Icon(
                          Icons.radio_button_checked_rounded,
                          size: 14.w,
                        ),
                      ),
                    ],
                  ),
                ),
                _buildSpaceW(),
                Container(
                  width: 65.w,
                  height: 65.w,
                  decoration: BoxDecoration(
                    color: Color(0xffc4c4c4),
                    borderRadius: BorderRadius.circular(16.w),
                  ),
                  child: Stack(
                    children: [
                      SizedBox.expand(),
                      Positioned(
                        right: 12,
                        top: 10,
                        child: Icon(
                          Icons.radio_button_checked_rounded,
                          size: 14.w,
                        ),
                      ),
                    ],
                  ),
                ),
                _buildSpaceW(),
              ],
            ),
          ),
          _buildSpaceH(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: GestureDetector(
              child: Container(
                height: 48.w,
                decoration: BoxDecoration(
                  color: Color(0xffc4c4c4),
                  borderRadius: BorderRadius.circular(16.w),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.share),
                    Text(
                      "Share",
                      style: TextStyle(
                        fontSize: 14.w,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  SizedBox _buildSpaceH() => SizedBox(height: 24.w);

  SizedBox _buildSpaceW() {
    return SizedBox(
      width: 24.w,
    );
  }
}
