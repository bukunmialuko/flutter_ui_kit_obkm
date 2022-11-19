import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Page15 extends StatefulWidget {
  const Page15({Key? key}) : super(key: key);

  @override
  _Page15State createState() => _Page15State();
}

class _Page15State extends State<Page15> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Text(
                  'Verify your phone number',
                  style: TextStyle(
                    fontSize: 20,
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
                SizedBox(
                  height: 70,
                ),
                Card(
                  color: Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Container(
                    height: 70,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 40,
                          // color: Colors.purple,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/png/usa.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '+1',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: GoogleFonts.workSans().fontFamily,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_drop_down),
                        SizedBox(width: 5),
                        VerticalDivider(
                          thickness: 2,
                        ),
                        SizedBox(width: 10),
                        Text(
                          '206-312-9956',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: GoogleFonts.workSans().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            // color: Colors.blue,
            height: size.height / 3.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.pop();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF161616),
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    fixedSize: Size(342, 54),
                  ),
                  child: Text(
                    'Send Code',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
