import 'package:flutter/material.dart';
import 'package:flutter_ui_kit_obkm/generated/l10n.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(S.current.title),
      ),
    );
  }
}
