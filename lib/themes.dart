import 'package:flutter/material.dart';

ThemeData defaultTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xff192F4D),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    surface: const Color(0xFF5A9AAF),
    secondary: const Color(0xFFE42535),
    secondaryVariant: const Color(0xFFeff6e0),
    primary: const Color(0xff2F5575), //inactive card color
    background: const Color(0xff192F4D),
    // background: const Color(0xff01161e),
  ),
);

TextStyle defaultTextStyle = const TextStyle(
  fontSize: 18.0,
);
TextStyle defaultTextBoldStyle = const TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
TextStyle defaultTextTitleStyle = const TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);
TextStyle defaultTextResultStyle = const TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

SliderThemeData defaultSliderTheme = const SliderThemeData(
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13.0),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
);
