import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util.dart';

void main() {
  setUp(() => GoogleFonts.config.allowRuntimeFetching = false);

  testWidgets('test textformfield is readonly', (tester) async {
    await loadAppAndNavigate(tester, 1);

    expect(find.text("Contacts"), findsWidgets);
    expect(find.text('Hello'), findsNothing);
    final searchField = find.byType(TextFormField);
    await tester.enterText(searchField, 'Hello');
    await tester.pumpAndSettle();
    expect(find.text('Hello'), findsNothing);
    await tester.tap(find.widgetWithIcon(IconButton, Icons.add_circle));
    await tester.pumpAndSettle();
  });

  testWidgets('test to find name at the end of listview items', (tester) async {
    await loadAppAndNavigate(tester, 1);
    final contactsListFinder = find.byWidgetPredicate(
        (widget) => widget is Scrollable && widget.axis == Axis.vertical,
        description: 'Vertical Scroll list View');
    final listTextFinder = find.text('Jeff Bezos');
    expect(listTextFinder, findsNothing);
    await tester.scrollUntilVisible(listTextFinder, 500,
        scrollable: contactsListFinder);
    expect(listTextFinder, findsOne);
  });
}
