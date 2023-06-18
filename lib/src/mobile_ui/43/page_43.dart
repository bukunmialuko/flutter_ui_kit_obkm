import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class Page43 extends StatelessWidget {
  const Page43({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playing Now"),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          height: 1.1.h,
        ),
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_left)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 24.h,
                bottom: 38.h,
              ),
              height: 338.h,
              // color: Colors.red,
              child: Carousel(),
            ),
            Text(
              "Hello darkness my old friend",
              style: GoogleFonts.workSans(
                fontSize: 18.sp,
                height: 1.22.h,
              ),
            ),
            Text(
              "Umm, Idk",
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w600,
                fontSize: 10.sp,
                height: 1.20.h,
              ),
            ),
            SizedBox(
              height: 104.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Slider(
                value: 0.3636,
                onChanged: (value) {},
                activeColor: Color(0xffDA1E28),
                inactiveColor: Color(0xffA8A8A8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("1:21"),
                  Text("-2:23"),
                ],
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.replay,
                    size: 32.w,
                  ),
                  Icon(
                    Icons.fast_rewind,
                    size: 32.w,
                  ),
                  Icon(
                    Icons.play_arrow,
                    size: 32.w,
                  ),
                  Icon(
                    Icons.fast_forward,
                    size: 32.w,
                  ),
                  Icon(
                    Icons.shuffle,
                    size: 32.w,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late final PageController controller;
  double _currentPage = 0.0;

  final _height = 338;

  final _scaleFactor = 0.73;

  final images = [
    Assets.png.m43.image0.path,
    Assets.png.m43.image1.path,
    Assets.png.m43.image2.path,
  ];

  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: 0,
      viewportFraction: 0.85,
    );
    controller.addListener(_scrollListener);
  }

  void _scrollListener() {
    setState(() {
      _currentPage = controller.page!;
    });
    // print(_currentPage);
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: images.length,
      pageSnapping: true,
      itemBuilder: (context, index) {
        return _buildPageItem(index);
      },
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    double currScale = 0.0;
    double currTrans = 0.0;

    if (index == _currentPage.floor()) {
      currScale = 1 - (_currentPage - index) * (1 - _scaleFactor);
    } else if (index == _currentPage.floor() + 1) {
      currScale =
          _scaleFactor + (_currentPage - index + 1) * (1 - _scaleFactor);
    } else if (index == _currentPage.floor() - 1) {
      currScale = 1 - (_currentPage - index) * (1 - _scaleFactor);
    } else {
      currScale = _scaleFactor;
    }

    // currScale = _scaleFactor + (_currentPage - index) * (1 - _scaleFactor);

    // matrix = Matrix4.setTranslationRaw(horTrans, _height * (1 - currScale) / 2, 0);
    currTrans = _height / 1.2 * (1 - currScale);
    final opacity = currScale.clamp(0.0, 1.0);

    return Transform(
      transform: matrix
        ..setEntry(3, 2, 0.003)
        ..scale(1.0, currScale)
        ..translate(0.0, currTrans.abs()),
      child: Opacity(
        opacity: opacity,
        child: Container(
          width: 338.w,
          height: 338.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(images[index]),
            ),
          ),
        ),
      ),
    );
  }
}
