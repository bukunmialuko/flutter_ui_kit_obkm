import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_kit_obkm/src/screens/102/page102.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/bootstrap.dart';
import '../../utils/image_network_override.dart';

void main() {
  setUp(() => GoogleFonts.config.allowRuntimeFetching = false);
  setUp(() => HttpOverrides.global = TestHttpOverrides());

  testWidgets('test tabview controller', (tester) async {
    await tester.pumpWidget(bootstrap(Page102()));
    await tester.pumpAndSettle();

    // check the initial page of tabview
    final tabController =
        DefaultTabController.of(tester.element(find.text("Browse")));

    expect(tabController, isNotNull);
    expect(tabController.length, 5);
    expect(tabController.index, 1);
  });

  testWidgets('test navigating tabbar', (tester) async {
    await tester.pumpWidget(bootstrap(Page102()));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Collections'));

    // check the initial page of tabview
    final tabController =
        DefaultTabController.of(tester.element(find.text("Browse")));

    expect(tabController.index, 3);
  });
}
