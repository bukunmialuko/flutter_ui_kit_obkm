import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  NumberFormat formatter = new NumberFormat("00");
  debugPrint("123 should be ${formatter.format(3)}");
}
