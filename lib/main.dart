// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'input_page.dart';
import 'reusable_card.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InputPage(),
        theme: ThemeData(
          //scaffoldBackgroundColor: Color(0xff0F0F1E),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            surface: Color(0xFF1D1E33),
            secondary: Color(0xFFEB1555),
            primary: Color(0xff111328), //inactive card color
            background: Color(0xff0F0F1E),
          ),
        ));
  }
}
