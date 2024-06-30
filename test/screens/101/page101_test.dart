import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_kit_obkm/src/screens/101/page101.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/image_network_override.dart';

void main() {
  setUp(() => GoogleFonts.config.allowRuntimeFetching = false);

  setUp(() => io.HttpOverrides.global = TestHttpOverrides());

  testWidgets('test appbar title appear and disappear when scroll',
      (tester) async {
    await tester.pumpWidget(ScreenUtilInit(
      designSize: const Size(390, 844),
      child: Page101(),
      builder: (context, child) => MaterialApp(home: child),
    ));
    await tester.pumpAndSettle();

    // find test paga 101
    expect(find.byType(Page101), findsOneWidget);

    // find title and button
    final expandedTitleFinder = find.byType(ExpandedTitle);
    final titleFinder = find.ancestor(
      of: find.text('Advance with Kelly Carpenter'),
      matching: find.byType(AnimatedOpacity),
    );
    expect(expandedTitleFinder, findsOne);

    expect(tester.widget<AnimatedOpacity>(titleFinder).opacity, 0);

    // scroll down
    await tester.drag(
        find.byType(
          Scrollable,
        ),
        Offset(0, -1000));
    await tester.pumpAndSettle();

    expect(tester.widget<AnimatedOpacity>(titleFinder).opacity, 1);

    // scroll up
    await tester.drag(
        find.byType(
          Scrollable,
        ),
        Offset(0, 1000));
    await tester.pumpAndSettle();

    expect(tester.widget<AnimatedOpacity>(titleFinder).opacity, 0);
  });
}
