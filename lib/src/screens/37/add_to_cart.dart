import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 36.w, horizontal: 24.w),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Something Cool",
                    style: TextStyle(
                      fontSize: 20.w,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Size: 7.60 fl oz/ 225 ml",
                    style: TextStyle(
                      fontSize: 12.w,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 18.w,
                      ),
                      Icon(
                        Icons.star,
                        size: 18.w,
                      ),
                      Icon(
                        Icons.star,
                        size: 18.w,
                      ),
                      Icon(
                        Icons.star,
                        size: 18.w,
                      ),
                      Icon(
                        Icons.star_half_rounded,
                        size: 18.w,
                      ),
                    ],
                  ),
                  Text(
                    "(150 reviews)",
                    style:
                        TextStyle(fontSize: 12.w, fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30.w,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18.w,
              vertical: 10.w,
            ),
            width: 126.w,
            height: 38.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.w),
              color: Color(0xfff4f4f4),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: Offset(0.0, 1.w),
                  blurRadius: 4.w,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.remove,
                    size: 16.w,
                  ),
                ),
                SizedBox(
                  child: Text(
                    "1",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.add,
                    size: 16.w,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$29.99",
                style: TextStyle(
                  fontSize: 24.w,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 48.w,
                  width: 180.w,
                  decoration: BoxDecoration(
                    color: Color(0xffc4c4c4),
                    borderRadius: BorderRadius.circular(16.w),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add to cart",
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
