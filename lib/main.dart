import 'package:bmicalculator/views/result_page.dart';
import 'package:flutter/material.dart';

import 'views/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      home: HomePage(),
      routes: {
        '/homePage': (context) => HomePage(),
        '/resultPage': (context) => ResultPage(),
      },
    );
  }
}
