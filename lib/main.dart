import 'package:flutter/material.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Revanth-PortFolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
       
      ),
      home: HomePage()
    );
  }
}

