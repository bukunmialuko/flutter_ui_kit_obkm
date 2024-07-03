import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_kit_obkm/src/screens/104/page104.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/bootstrap.dart';

void main() {
  setUp(() => GoogleFonts.config.allowRuntimeFetching = false);

  testWidgets('test choosing choises ', (tester) async {
    await tester.pumpWidget(bootstrap(Page104()));
    await tester.pumpAndSettle();

    final Page104State page104State = tester.state(find.byType(Page104));

    final scrollableFinder = find.byType(Scrollable);
    for (int i = 1; i < 4; i++) {
      await tester.scrollUntilVisible(find.byKey(Key('goal_$i')), 50,
          scrollable: scrollableFinder);
      await tester.tap(find.byKey(Key('goal_$i')));
    }

    expect(page104State.choises.length, 3);
    expect(page104State.choises.contains('4'), false);
  });

  testWidgets('test removing choises ', (tester) async {
    await tester.pumpWidget(bootstrap(Page104()));
    await tester.pumpAndSettle();

    final Page104State page104State = tester.state(find.byType(Page104));

    final scrollableFinder = find.byType(Scrollable);
    for (int i = 1; i < 5; i++) {
      await tester.scrollUntilVisible(find.byKey(Key('goal_$i')), 50,
          scrollable: scrollableFinder);
      await tester.tap(find.byKey(Key('goal_$i')));
    }

    expect(page104State.choises.length, 4);
    await tester.tap(find.byKey(Key('goal_3')));
    expect(page104State.choises.length, 3);

    expect(page104State.choises.contains('3'), false);
  });
}
