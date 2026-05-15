import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_kit_obkm/main.dart' as test_app;

void main() {
  testWidgets('Test Homepage', (tester) async {
    await tester.binding.setSurfaceSize(const Size(390, 844));
    await tester.pumpWidget(test_app.App());
    await tester.pumpAndSettle();
    expect(find.text('Flutter Ui Kit'), findsOneWidget);
  });
}
