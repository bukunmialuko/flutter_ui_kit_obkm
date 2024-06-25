import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_kit_obkm/main.dart' as test_app;
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUp(() => GoogleFonts.config.allowRuntimeFetching = false);

  testWidgets('Test Page 1', (tester) async {
    await tester.binding.setSurfaceSize(Size(390, 844));
    await tester.pumpWidget(
      test_app.App(),
    );
    await tester.pumpAndSettle();

    expect(find.text('Flutter Ui Kit'), findsOneWidget);

    await tester.tap(find.widgetWithText(Container, '1'));
    await tester.pumpAndSettle();

    expect(find.text('Flutter Ui Kit'), findsNothing);
    expect(find.text("Contacts"), findsWidgets);
    expect(find.text('Hello'), findsNothing);

    final searchField = find.byType(TextFormField);
    await tester.enterText(searchField, 'Hello');
    await tester.pumpAndSettle();
    expect(find.text('Hello'), findsOneWidget);

    final contactsListFinder = find.byWidgetPredicate(
        (widget) => widget is Scrollable && widget.axis == Axis.vertical,
        description: 'Vertical Scroll list View');
    final listTextFinder = find.text('Jeff Bezos');

    // Scroll until the 'Jeff Bezos' item is visible
    await tester.scrollUntilVisible(
      listTextFinder,
      500.0,
      scrollable: contactsListFinder,
    );

    expect(listTextFinder, findsOneWidget);
  });
}
