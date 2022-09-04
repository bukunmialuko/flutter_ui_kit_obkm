import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';

class Page30 extends StatefulWidget {
  const Page30({Key? key}) : super(key: key);

  @override
  State<Page30> createState() => _Page30State();
}

class _Page30State extends State<Page30> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            pinned: false,
            floating: false,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 40.0,
                    ),
                  ),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Icon(
                      Icons.shopping_bag,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
            ],
            elevation: 0.0,
            expandedHeight: 330.0.h,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsets.only(
                  right: 60.0,
                ),
                child: Text(
                  'John Doe\'s vegan palace',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0.sp,
                  ),
                ),
              ),
              background: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
                    child: Assets.png.m29.foodPng.image(
                      height: 300.0.h,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (index > 0) return null;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.star_fill,
                              color: Colors.black,
                              size: 18.0.sp,
                            ),
                            label: Text(
                              '4.8 (50 reviews)',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(width: 20.0.r),
                          TextButton.icon(
                            onPressed: () {},
                            icon: Assets.png.m29.delivery.image(
                              height: 30.r,
                              width: 30.r,
                              fit: BoxFit.fitWidth,
                            ),
                            label: Text(
                              'Free delivery',
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10.0.r),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.grey.withOpacity(0.5),
                          ),
                          shadowColor: MaterialStateProperty.all<Color>(
                            Colors.transparent,
                          ),
                        ),
                        onPressed: () {},
                        child: Center(
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.tag,
                              color: Colors.black,
                            ),
                            label: Text(
                              '20% off entire menu',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.info,
                          color: Colors.black,
                          size: 15.0,
                        ),
                        label: Text(
                          'Restaurant info',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.0.sp,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 2.0,
                      ),
                      SizedBox(height: 20.0.h),
                      Text(
                        'Signature Dishes',
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
                      ),
                      SizedBox(height: 20.0),
                      for (int i = 1; i <= 2; i++)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            height: 150.0.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.2),
                              ),
                            ),
                            child: ListTile(
                              title: Text(
                                'Avo Toast with coffee',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14.0,
                                ),
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10.0),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit sed dictum aliquet sapien. Dui massa purus enim ut cras aliquet.',
                                    maxLines: null,
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    '\$${Random().nextInt(100)}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                ],
                              ),
                              trailing: Wrap(
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Assets.png.m30.banana.image(
                                      height: 50.0,
                                      width: 50.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      floatingActionButton: Container(
        width: 76.w,
        height: 76.w,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(76.w),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(1.0),
              spreadRadius: 2,
              blurRadius: 1,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Center(child: Icon(Icons.add)),
      ),
    );
  }

  _bottomNavBar() {
    return Container(
      height: 90.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xffE0E0E0),
        ),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 33.w, right: 34.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.svg.m6.motionPhotosPause.svg(
                height: 24.r,
                width: 24.r,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 41.w,
              ),
              Assets.svg.m6.castConnected.svg(
                height: 24.r,
                width: 24.r,
                fit: BoxFit.fill,
              ),
              Spacer(),
              Assets.svg.m6.debug.svg(
                height: 24.r,
                width: 24.r,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 41.w,
              ),
              Assets.svg.m6.contact.svg(
                height: 24.r,
                width: 24.r,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
