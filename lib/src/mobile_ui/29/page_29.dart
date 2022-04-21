import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_kit_obkm/src/res/assets.dart';

class Page29 extends StatefulWidget {
  const Page29({Key? key}) : super(key: key);

  @override
  State<Page29> createState() => _Page29State();
}

class _Page29State extends State<Page29> {
  final categoryArraylist = [
    Categories(
      category: 'Sushi',
      icon: Image.asset(
        Assets.SUSHI,
        height: 30.r,
        width: 30.r,
        fit: BoxFit.fitWidth,
      ),
    ),
    Categories(
      category: 'Fries',
      icon: Image.asset(
        Assets.FRIES,
        height: 30.r,
        width: 30.r,
        fit: BoxFit.fitWidth,
      ),
    ),
    Categories(
      category: 'Chinese',
      icon: Image.asset(
        Assets.CHINESE,
        height: 30.r,
        width: 30.r,
        fit: BoxFit.fitWidth,
      ),
    ),
  ];

  List types = ['vegan', 'breakfast', 'healthy', 'lunch'];
  String typ = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hey Joe Doe'),
              SizedBox(height: 5.0.h),
              Text(
                'Hungry today?',
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0.sp),
              ),
              SizedBox(height: 20.0.h),
              //search and filter widgets
              _buildSearchAndFilterWidget(),
              SizedBox(height: 20.0.h),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                leading: Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0),
                ),
                trailing: Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              _buildCategories(),
              SizedBox(height: 20.0.h),
              Text(
                'Open restaurants',
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0.sp),
              ),
              SizedBox(height: 20.0.h),
              _buildFoodImage(),
              SizedBox(height: 10.0.h),
              Text(
                'John Doe\'s vegan place',
                style:
                    TextStyle(fontWeight: FontWeight.w600, fontSize: 17.0.sp),
              ),
              SizedBox(height: 5.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.DELIVERY,
                    height: 30.r,
                    width: 30.r,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(width: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(top: 9.5),
                    child: Text(
                      'Free Delivery',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0.sp,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 40.0,
                child: Row(
                  children: [
                    for (String type in types)
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10.0,
                          top: 10.0,
                        ),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            color: Color(0xffD0D0D0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 5.0,
                              ),
                              child: Text(
                                type,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 20.0.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  Assets.FOOD2,
                  height: 200.0.h,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _bottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      floatingActionButton: Container(
        width: 76.w,
        height: 76.w,
        decoration: BoxDecoration(
          color: Color(0xffF4F4F4).withOpacity(1.0),
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

  _buildCategories() {
    return Container(
      height: 80.0.h,
      child: ListView.builder(
        itemCount: categoryArraylist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 30.0.h,
              width: 150.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xffD0D0D0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    categoryArraylist[index].icon,
                    Text(
                      categoryArraylist[index].category,
                      style: TextStyle(fontSize: 15.0.sp),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _buildSearchAndFilterWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50.0.h,
          width: 290.0.w,
          decoration: BoxDecoration(
            color: Color(0xffF4F4F4),
            border: Border.all(
              color: Colors.grey.withOpacity(0.2),
            ),
            borderRadius: BorderRadius.circular(25.0.w),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 10.0.w),
              Center(
                child: Icon(Icons.search),
              ),
              SizedBox(width: 10.0.w),
              Flexible(
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 50.0.h,
          width: 50.0.w,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(15.0.w),
          ),
          child: Center(
            child: Icon(Icons.filter_list),
          ),
        ),
      ],
    );
  }

  _buildFoodImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: [
          Image.asset(
            Assets.FOOD,
            height: 200.0.h,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 35.0.h,
            left: 20.0.w,
            child: Container(
              height: 45.0.h,
              width: 120.0.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff525252).withOpacity(.9),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '20 - 30 min',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 35.0.h,
            right: 20.0.w,
            child: Container(
              height: 45.0.h,
              width: 100.0.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff525252).withOpacity(.9),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.star_fill,
                      size: 20.0,
                      color: Colors.white,
                    ),
                    Text(
                      '4.80',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
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
              Image.asset(
                Assets.ADD,
                height: 24.r,
                width: 24.r,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                width: 41.w,
              ),
              SvgPicture.asset(
                Assets.PG6_CAST_CONNECTED,
                height: 24.r,
                width: 24.r,
                fit: BoxFit.fill,
              ),
              Spacer(),
              Image.asset(
                Assets.MORE_VERT,
                height: 24.r,
                width: 24.r,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                width: 41.w,
              ),
              SvgPicture.asset(
                Assets.PG6_CONTACT,
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

class Categories {
  final String category;
  final Image icon;

  Categories({required this.category, required this.icon});
}
