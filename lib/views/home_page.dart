import 'package:bmicalculator/views/result_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color iconColor = Colors.grey;
  bool isSelectedM = false;
  bool isSelectedF = false;
  int height = 180;
  int weight = 85;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'BMI Calculator',
            style: GoogleFonts.montserrat(color: Colors.black, fontSize: 18),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Feather.settings,
                  color: Colors.black,
                ),
                onPressed: () {}),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        padding:
                            EdgeInsets.only(left: 16, right: 16, bottom: 8),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              isSelectedM = !isSelectedM;
                              isSelectedF = false;
                              print('male $isSelectedM __ female $isSelectedF');
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: isSelectedM ? 2 : 1,
                                  color:
                                      isSelectedM ? Colors.black : Colors.grey,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Foundation.male,
                                  size: isSelectedM ? 90 : 60,
                                  color: isSelectedM
                                      ? Colors.blueAccent
                                      : Colors.grey,
                                ),
                                Text(
                                  'Male',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: isSelectedM
                                          ? Colors.black
                                          : Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                      Expanded(
                          child: Container(
                        padding:
                            EdgeInsets.only(left: 16, right: 16, bottom: 8),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              isSelectedF = !isSelectedF;
                              isSelectedM = false;
                              print('male $isSelectedM __ female $isSelectedF');
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: isSelectedF ? 2 : 1,
                                  color:
                                      isSelectedF ? Colors.black : Colors.grey,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Foundation.female,
                                  size: isSelectedF ? 90 : 60,
                                  color: isSelectedF
                                      ? Colors.pinkAccent
                                      : Colors.grey,
                                ),
                                Text(
                                  'Female',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: isSelectedF
                                          ? Colors.black
                                          : Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                )),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: Icon(Feather.minus_square, size: 35),
                        onPressed: () {
                          setState(() {
                            height--;
                          });
                        }),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$height',
                          textScaleFactor: 3,
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 6),
                        Text('Height \(in cm\)',
                            style: GoogleFonts.montserrat(
                                color: Colors.grey[600])),
                      ],
                    ),
                    IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: Icon(Feather.plus_square, size: 35),
                        onPressed: () {
                          setState(() {
                            height++;
                          });
                        }),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: Icon(Feather.minus_square, size: 35),
                        onPressed: () {
                          setState(() {
                            weight--;
                          });
                        }),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$weight',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400),
                          textScaleFactor: 3,
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Weight \(in kgs\)',
                          style:
                              GoogleFonts.montserrat(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                    IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: Icon(Feather.plus_square, size: 35),
                        onPressed: () {
                          setState(() {
                            weight++;
                          });
                        }),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlatButton(
                      height: 45,
                      minWidth: size.width,
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: ResultPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Submit',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
