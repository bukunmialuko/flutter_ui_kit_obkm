import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page41 extends StatelessWidget {
  const Page41({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          height: 1.1.h,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.0.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile Picture",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  height: 1.38.h,
                ),
              ),
              Text(
                "Your profile picture can only be seen by you.",
                style: TextStyle(
                  fontSize: 14.sp,
                  height: 1.29.h,
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Center(
                child: Container(
                  width: 122.w,
                  height: 122.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffC4C4C4),
                  ),
                ),
              ),
              SizedBox(
                height: 34.h,
              ),
              Container(
                height: 56.h,
                color: Color(0xffC4C4C4),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit),
                    SizedBox(
                      width: 11.w,
                    ),
                    Text('Edit Profile'),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                "General Information",
                style: TextStyle(
                  fontSize: 16.sp,
                  height: 1.38.h,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              MyFormField(
                name: "Name",
              ),
              SizedBox(
                height: 16.h,
              ),
              MyFormField(
                name: "Surname",
              ),
              SizedBox(
                height: 16.h,
              ),
              MyFormField(
                name: "Email Address",
              ),
              SizedBox(
                height: 16.h,
              ),
              MyFormField(
                name: "Location",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFormField extends StatelessWidget {
  const MyFormField({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 16.sp,
            height: 1.38.h,
            fontWeight: FontWeight.w600,
            color: Color(0xffA8A8A8),
          ),
        ),
        TextFormField()
      ],
    );
  }
}
