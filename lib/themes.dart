import 'package:flutter/material.dart';

ThemeData defaultTheme = ThemeData(
  //scaffoldBackgroundColor: const Color(0xff0F0F1E),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    surface: const Color(0xFF598392),
    secondary: const Color(0xFFEB1555),
    secondaryVariant: Color(0xFFeff6e0),
    primary: const Color(0xff124559), //inactive card color
    background: const Color(0xff01161e),
  ),
);

TextStyle textDefaultStyle = TextStyle(
  fontSize: 18.0,
  color: defaultTheme.colorScheme.secondaryVariant,
);
TextStyle textDefaultBoldStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
  color: defaultTheme.colorScheme.secondaryVariant,
);
