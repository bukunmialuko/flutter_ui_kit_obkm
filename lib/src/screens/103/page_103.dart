import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page103 extends StatelessWidget {
  const Page103({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Filter',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 22.sp,
              ),
            ),
            Text(
              '28 workouts',
              style: TextStyle(
                color: Color(0xffA8A8A8),
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            27.verticalSpace,
            FilterGroup(
              filters: [
                FilterItem(title: 'Class'),
                FilterItem(title: 'Whiteboard'),
                FilterItem(title: 'Time-based'),
                FilterItem(title: 'Rep-based'),
              ],
              onChanged: (value) {},
              width: 168.w,
              title: 'Format',
            ),
            36.verticalSpace,
            FilterGroup(
              onChanged: (value) {},
              spacing: 7,
              width: 109.w,
              filters: [
                FilterItem(title: '15 min'),
                FilterItem(title: '25 mins'),
                FilterItem(title: '45 mins'),
              ],
              title: 'Duration',
            ),
            36.verticalSpace,
            FilterGroup(
              onChanged: (value) {},
              width: 109.w,
              spacing: 7,
              filters: [
                FilterItem(
                  title: 'None',
                ),
                FilterItem(title: 'Basic'),
                FilterItem(title: 'Full'),
              ],
              title: 'Equipment',
            ),
            36.verticalSpace,
            FilterGroup(
              onChanged: (value) {},
              spacing: 7,
              width: 109.w,
              filters: [
                FilterItem(title: 'Beginner'),
                FilterItem(title: 'Intermediate'),
                FilterItem(title: 'Advanced'),
              ],
              title: 'Level',
            ),
            36.verticalSpace,
            FilterGroup(
              spacing: 7,
              width: 109.w,
              title: 'Intensity',
              onChanged: (value) {},
              filters: [
                FilterItem(title: 'Low'),
                FilterItem(title: 'Moderate'),
                FilterItem(title: 'High'),
              ],
            ),
            4.verticalSpace,
          ],
        ),
      ),
    );
  }
}

class FilterGroup extends StatelessWidget {
  const FilterGroup({
    super.key,
    required this.filters,
    required this.onChanged,
    required this.title,
    this.width,
    this.spacing = 5,
  });

  final String title;
  final List<FilterItem> filters;
  final double spacing;
  final double? width;
  final Function(FilterItem value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22.sp,
          ),
        ),
        20.verticalSpace,
        Wrap(
          runSpacing: spacing,
          spacing: spacing,
          children: filters
              .map(
                (filter) => GestureDetector(
                  onTap: () => onChanged(filter),
                  child: FilterCard(
                    width: width,
                    title: filter.title,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class FilterCard extends StatelessWidget {
  const FilterCard({required this.title, super.key, this.width});

  final String title;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: width,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffD0D0D0),
        ),
        color: Colors.white,
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class FilterItem {
  final String title;

  const FilterItem({required this.title});
}
