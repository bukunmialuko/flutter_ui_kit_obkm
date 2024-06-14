// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_kit_obkm/main.dart' as test_app;
import 'package:flutter_ui_kit_obkm/src/screens/home/widgets/page_button_widget.dart';

void main() {
  testWidgets('Test Homepage', (tester) async {
    await tester.binding.setSurfaceSize(Size(390, 844));
    await tester.pumpWidget(
      test_app.App(),
    );
    await tester.pumpAndSettle();
    expect(find.text('Flutter Ui Kit'), findsOneWidget);
    final scrollableFinder = find.byType(Scrollable);
    final textFinder = find.widgetWithText(PageButtonWidget, '100');
    await tester.scrollUntilVisible(textFinder, 500,
        scrollable: scrollableFinder);
    expect(find.text('100'), findsOneWidget);
  });
}
