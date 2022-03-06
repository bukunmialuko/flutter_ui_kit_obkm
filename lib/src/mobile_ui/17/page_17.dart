import 'package:flutter/material.dart';
import 'package:flutter_ui_kit_obkm/src/navigation/navigation_service.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class Page17 extends StatefulWidget {
  const Page17({Key? key}) : super(key: key);

  @override
  _Page17State createState() => _Page17State();
}

class _Page17State extends State<Page17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Text(
                  'Account created!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Convallis vestibulum augue massa sed aenean.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 100, left: 50, right: 50),
            height: 400,
            // color: Colors.purple,
            child: Container(
              height: 150,
              // color: Colors.green,
              child: Image.asset('assets/png/todo.png'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              GetIt.I.get<NavigationService>().back();
            },
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFF161616),
              elevation: 0,
              shadowColor: Colors.transparent,
              fixedSize: Size(342, 54),
            ),
            child: Text(
              'Continue',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
