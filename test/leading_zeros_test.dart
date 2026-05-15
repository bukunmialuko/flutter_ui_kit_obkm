import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

void main() {
  test('NumberFormat("00") pads single-digit values with a leading zero', () {
    final formatter = NumberFormat('00');
    expect(formatter.format(3), '03');
    expect(formatter.format(12), '12');
    expect(formatter.format(0), '00');
  });
}
