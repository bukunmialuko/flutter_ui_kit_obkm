import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class Page50 extends StatelessWidget {
  const Page50({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Men Collection",
            ),
            Text(
              "New in",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 16.sp,
                height: 1.38.h,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        titleTextStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          height: 1.1.h,
        ),
        titleSpacing: 24,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24.0.w),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            children: [
              SizedBox(
                height: 44.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCard(
                      name: "Trench Coat",
                      image: Assets.png.m50.image1,
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    ProductCard(
                      name: "Sweater",
                      image: Assets.png.m50.image2,
                    ),
                    // SizedBox(
                    //   width: 10.w,
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 37.h,
              ),
              CategoryCard(
                category: "New Collection",
                image: Assets.png.m50.image3,
              ),
              SizedBox(
                height: 24.h,
              ),
              CategoryCard(
                category: "Discount Items",
                image: Assets.png.m50.image4,
              ),
              SizedBox(
                height: 24.h,
              ),
              CategoryCard(
                category: "Blazers",
                image: Assets.png.m50.image5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String category;
  final AssetGenImage image;

  const CategoryCard({
    super.key,
    required this.category,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.h,
      width: double.infinity,
      // margin: EdgeInsets.symmetric(horizontal: 24.w),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image.provider(),
          fit: BoxFit.cover,
        ),
        // color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16.r),
      ),
      clipBehavior: Clip.antiAlias,
      child: ColoredBox(
        color: Color(0xffD0D0D0).withOpacity(0.8),
        child: Center(
          child: Text(
            category,
            style: TextStyle(
              fontFamily: GoogleFonts.workSans().fontFamily,
              fontSize: 20.sp,
              height: 1.10.h,
            ),
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final AssetGenImage image;

  const ProductCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220.w,
      height: 356.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 300.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: image.provider(),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(24.r),
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily: GoogleFonts.workSans().fontFamily,
                        fontWeight: FontWeight.w600,
                        height: 0.94,
                        fontSize: 20.sp,
                      ),
                    ),
                    Text(
                      "875 - 4788/751",
                      style: TextStyle(
                        fontFamily: GoogleFonts.workSans().fontFamily,
                        height: 1.10.h,
                        fontSize: 14.sp,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$599.99",
                    style: TextStyle(
                      fontFamily: GoogleFonts.openSansCondensed().fontFamily,
                      height: 0.85.h,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
