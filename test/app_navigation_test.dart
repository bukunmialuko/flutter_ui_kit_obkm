import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_kit_obkm/main.dart' as test_app;
import 'package:flutter_ui_kit_obkm/src/screens/home/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/image_network_override.dart';

void main() {
  setUp(() => GoogleFonts.config.allowRuntimeFetching = false);
  setUp(() => io.HttpOverrides.global = TestHttpOverrides());

  testWidgets('tapping a homepage tile leaves the home page',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(390, 844));
    await tester.pumpWidget(test_app.App());
    await tester.pumpAndSettle();

    expect(find.byType(MobileHomePage), findsOneWidget);

    await tester.tap(find.widgetWithText(Container, '1'));
    await tester.pumpAndSettle();

    expect(find.byType(MobileHomePage), findsNothing);
  });
}
