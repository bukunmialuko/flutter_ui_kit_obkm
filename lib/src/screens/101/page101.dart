import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page101 extends StatefulWidget {
  const Page101({super.key});

  @override
  State<Page101> createState() => _Page101State();
}

class _Page101State extends State<Page101> {
  final expandedBarHeight = 450.0;

  late final ScrollController scrollController;

  bool isCollapsed = false;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          setState(() {
            isCollapsed = scrollController.hasClients &&
                scrollController.offset > (expandedBarHeight - kToolbarHeight);
          });
          return false;
        },
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              centerTitle: false,
              elevation: 0,
              leading: BackButton(
                color: isCollapsed ? Colors.black : Colors.white,
              ),
              backgroundColor: isCollapsed ? Colors.white : Colors.transparent,
              expandedHeight: expandedBarHeight,
              title: AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: isCollapsed ? 1.0 : 0.0,
                  child: CollapsedTitle()),
              flexibleSpace: ExpandedTitle(),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 38.h,
              ),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 53.w,
                  mainAxisSpacing: 46.h,
                  mainAxisExtent: 44.h,
                ),
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      height: 44.h,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.check_circle_outline),
                          4.horizontalSpace,
                          Expanded(
                            child: Text(
                              '4 stages',
                              style: GoogleFonts.workSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 44.h,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.calendar_today),
                          4.horizontalSpace,
                          Expanded(
                            child: Text(
                              '8 weeks, 3x a week',
                              style: GoogleFonts.workSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 44.h,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.stairs),
                          4.horizontalSpace,
                          Expanded(
                            child: Text(
                              'Intermedate',
                              style: GoogleFonts.workSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 44.h,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.timer),
                          4.horizontalSpace,
                          Expanded(
                            child: Text(
                              '60+ min workouts',
                              style: GoogleFonts.workSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: Padding(
                padding: EdgeInsets.all(24.w),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing enim, eu ut neque. Felis, imperdiet metus lectus arcu. Amet ac vestibulum placerat aliquam lacinia id porttitor sit. Posuere ut velit urna, vitae nibh in adipiscing sagittis. Tristique lectus volutpat, natoque enim lorem sed maecenas amet. Rhoncus, feugiat mi a cursus in est amet. Pellentesque quis in posuere nunc sit nec phasellus mauris. Sagittis pharetra, quam eu morbi nec enim sed vel mi. Integer id urna tincidunt interdum tortor nisi, eget imperdiet faucibus. Pretium, est non auctor enim fusce aliquet mauris eget. Ut phasellus bibendum nibh id laoreet nisi magna gravida viverra. In lectus tellus ultricies aliquet nisl. Amet, enim risus tellus tellus, purus. Id est, nunc lectus bibendum non viverra erat. Ullamcorper libero, feugiat egestas lorem pulvinar amet diam cras.',
                  style: GoogleFonts.workSans(
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandedTitle extends StatelessWidget {
  const ExpandedTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://www.figma.com/file/7EqcVT2IhdPRsvbn4EY5TM/image/32b4263f0bb61d94350ff6755f8f34cead807ea0',
            fit: BoxFit.cover,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffC4C4C4).withOpacity(0.2),
                  Color(0xff858585).withOpacity(0.2),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 24.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Advance with Kelly Carpenter',
                    style: GoogleFonts.workSans(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  20.verticalSpace,
                  WatchTrailerButton(color: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CollapsedTitle extends StatelessWidget {
  const CollapsedTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Advance with Kelly Carpenter',
      style: GoogleFonts.workSans(
        fontSize: 22.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class WatchTrailerButton extends StatelessWidget {
  const WatchTrailerButton({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60.r),
        border: Border.all(
          color: color,
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 12.h,
        horizontal: 16.w,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.play_arrow,
            size: 24,
            color: color,
          ),
          10.horizontalSpace,
          Text(
            'Watch Trailer',
            style: GoogleFonts.workSans(
              color: color,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
