import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'home_page.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double result = 23.1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(MaterialIcons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: HomePage(),
                ),
              );
            }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height * .3,
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
              width: size.width,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your BMI is',
                            style:
                                GoogleFonts.montserrat(color: Colors.grey[600]),
                          ),
                          SizedBox(height: 6),
                          Text(
                            '$result',
                            textScaleFactor: 3,
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    height: 30,
                    color: Colors.red,
                    thickness: 7,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: size.height * .3,
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
              width: size.width,
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Image.asset('assets/images/person.png'),
                      )),
                  Expanded(
                      flex: 4,
                      child: Container(
                        child: Center(
                          child: Text(
                            'A BMI of 18.5 - 24.9 indicates that you are at a healty weight for your height. By maintaining a healty weight, you lower your risk of develoing serious health problems.',
                            style:
                                GoogleFonts.montserrat(color: Colors.grey[600]),
                          ),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(icon: Icon(Feather.bookmark), onPressed: () {}),
                IconButton(
                    icon: Icon(Feather.refresh_ccw),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: HomePage(),
                        ),
                      );
                    }),
                IconButton(icon: Icon(AntDesign.sharealt), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
