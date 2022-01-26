import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 640,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage('assets/png/flower.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      'AIRE',
                      style: TextStyle(
                        fontSize: 72,
                        color: Color(0xFF8B8B8B),
                        fontFamily: 'Abolition',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 640,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: SizedBox(
                      width: 500,
                      // color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'SHOP',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'ABOUT',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'INNOVATION',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'CART',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 450,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'ANTI',
                              style: TextStyle(
                                fontSize: 72,
                                fontFamily: GoogleFonts.gfsDidot().fontFamily,
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              'DESIGN',
                              style: TextStyle(
                                fontSize: 72,
                                fontFamily: 'Proxima Nova',
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Libero in mauris est condimentum suscipit. Viverra tincidunt amet aliquet massa rhoncus egestas eget id turpis. Augue nunc. ',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      width: 450,
                      height: 40,
                      color: Color(0xFFD5DACC),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text('This website uses cookies. '),
                              Text(
                                'Learn more',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                          Text('ACCEPT'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
