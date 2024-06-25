import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_kit_obkm/main.dart' as test_app;
import 'package:flutter_ui_kit_obkm/src/screens/home/home_page.dart';
import 'package:flutter_ui_kit_obkm/src/screens/home/widgets/page_button_widget.dart';

Future<void> loadAppAndNavigate(WidgetTester tester, int page) async {
  await tester.binding.setSurfaceSize(Size(390, 844));
  await tester.pumpWidget(
    test_app.App(),
  );
  await tester.pumpAndSettle();

  expect(find.byType(MobileHomePage), findsOneWidget);

  final buttonFinder = find.widgetWithText(PageButtonWidget, '$page');
  final scrollableFinder = find.byType(Scrollable);

  await tester.scrollUntilVisible(
    buttonFinder,
    500,
    scrollable: scrollableFinder,
  );

  await tester.tap(buttonFinder);
  await tester.pumpAndSettle();

  expect(find.byType(MobileHomePage), findsNothing);
}
