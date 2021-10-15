import 'package:flutter/material.dart';

ThemeData defaultTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xff0F0F1E),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    surface: const Color(0xFF5A9AAF),
    // surface: const Color(0xFF52A3B7),
    // surface: const Color(0xFF598392),
    secondary: const Color(0xFFE42535),
    secondaryVariant: const Color(0xFFeff6e0),
    primary: const Color(0xff2F5575), //inactive card color
    // primary: const Color(0xff124559), //inactive card color
    background: const Color(0xff192F4D),
    // background: const Color(0xff01161e),
  ),
);

TextStyle defaultTextStyle = const TextStyle(
  fontSize: 18.0,
);
TextStyle defaultTextBoldStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
SliderThemeData defaultSliderTheme = SliderThemeData(
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13.0),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
);
