import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:flutter_ui_kit_obkm/main.dart' as test_app;
import 'package:flutter_ui_kit_obkm/src/screens/2/page2.dart';
// import 'package:flutter_ui_kit_obkm/src/screens/home/widgets/page_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util.dart';

void main() {
  setUp(() => GoogleFonts.config.allowRuntimeFetching = false);
  testWidgets('test search text field', (tester) async {
    await loadAppAndNavigate(tester, 2);

    final searchTextFieldFinder =
        find.widgetWithText(TextFormField, 'Search conversations');
    // test it is readonly
    expect(find.text('Hello'), findsNothing);
    await tester.enterText(searchTextFieldFinder, 'Hello');
    expect(find.text('Hello'), findsNothing);
    await tester.tap(find.widgetWithIcon(IconButton, Icons.arrow_back_ios));
    await tester.pumpAndSettle();
  });

  testWidgets('find call and video call icon', (tester) async {
    await loadAppAndNavigate(tester, 2);

    expect(find.text('Justin Wan'), findsOne);
    expect(find.byIcon(Icons.phone), findsOne);
    expect(find.byIcon(Icons.videocam), findsOne);
    await tester.tap(find.widgetWithIcon(IconButton, Icons.arrow_back_ios));
    await tester.pumpAndSettle();
  });

  testWidgets('find conversation', (tester) async {
    await loadAppAndNavigate(tester, 2);

    final messageFinder = find.byType(ChatBubble);

    expect(messageFinder, findsWidgets);
    await tester.tap(find.widgetWithIcon(IconButton, Icons.arrow_back_ios));
    await tester.pumpAndSettle();
  });
  testWidgets('test message field', (tester) async {
    await loadAppAndNavigate(tester, 2);
    final messageFinder = find.text('Wassup');
    final messageFormFieldFinder = find.widgetWithText(TextFormField, 'Aa');
    expect(messageFinder, findsNothing);
    await tester.enterText(messageFormFieldFinder, 'Wassup');
    expect(messageFinder, findsNothing);
    await tester.tap(find.widgetWithIcon(IconButton, Icons.arrow_back_ios));
    await tester.pumpAndSettle();
  });
}
