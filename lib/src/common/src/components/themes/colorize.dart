
import 'package:flutter/material.dart';

class Colorize {
  Colorize._();

  static const Color errorColor = Color.fromARGB(255, 255, 0, 0);



  ///* Background color
  static const int _middleBackgroundColor = 0xFFFAFAFA;

  static const Color backgroundColorShade100 = Color(0xFFF7F7FA);
  static const Color backgroundColorShade200 = Color(0xFFFAFAFF);
  static const Color backgroundColorShade300 = Color(0xFFFCFCFF);
  static const Color backgroundColorShade400 = Color(0xFFFCFCFF);
  static const Color backgroundColorShade500 = Color(_middleBackgroundColor);
  static const Color backgroundColorShade600 = Color(0xFFF2F2F5);
  static const Color backgroundColorShade700 = Color(0xFFEBEBF7);
  static const Color backgroundColorShade800 = Color(0xFFD6D6D6);
  static const Color backgroundColorShade900 = Color(0xFFB4B4BF);

  static const Color kShadowColor = Color(0xFFBCBEC3);

  static const MaterialColor backgroundColor =
      MaterialColor(_middleBackgroundColor, <int, Color>{
    100: backgroundColorShade100,
    200: backgroundColorShade200,
    300: backgroundColorShade300,
    400: backgroundColorShade400,
    500: backgroundColorShade500,
    600: backgroundColorShade600,
    700: backgroundColorShade700,
    800: backgroundColorShade800,
    900: backgroundColorShade900,
  });

  ///* Foreground color
  static const int _middleForegroundColor = 0xFF1B2337;

  static const Color foregroundColorShade100 = Color(0xFFF0F0F0);
  static const Color foregroundColorShade200 = Color(0xFFBCBEC3);
  static const Color foregroundColorShade300 = Color(0xFF878B96);
  static const Color foregroundColorShade400 = Color(0xFF525969);
  static const Color foregroundColorShade500 = Color(_middleForegroundColor);
  static const Color foregroundColorShade600 = Color(0xFF153243);
  static const Color foregroundColorShade700 = Color(0xFF4C626F);
  static const Color foregroundColorShade800 = Color(0xFF83919A);
  static const Color foregroundColorShade900 = Color(0xFFBAC1C5);

  static const MaterialColor foregroundColor =
      MaterialColor(_middleForegroundColor, <int, Color>{
    100: foregroundColorShade100,
    200: foregroundColorShade200,
    300: foregroundColorShade300,
    400: foregroundColorShade400,
    500: foregroundColorShade500,
    600: foregroundColorShade600,
    700: foregroundColorShade700,
    800: foregroundColorShade800,
    900: foregroundColorShade900,
  });

  ///* Primary Color
  static const int _middlePrimary = 0xFF00B4D8;

  static const Color primaryColorShade100 = Color(0xFFCAF0F8);
  static const Color primaryColorShade200 = Color(0xFFADE8F4);
  static const Color primaryColorShade300 = Color(0xFF90E0EF);
  static const Color primaryColorShade400 = Color(0xFF48CAE4);
  static const Color primaryColorShade500 = Color(_middlePrimary);
  static const Color primaryColorShade600 = Color(0xFF0096C7);
  static const Color primaryColorShade700 = Color(0xFF0077B6);
  static const Color primaryColorShade800 = Color(0xFF023E8A);
  static const Color primaryColorShade900 = Color(0xFF03045E);

  static const MaterialColor primaryColor =
      MaterialColor(_middlePrimary, <int, Color>{
    100: primaryColorShade100,
    200: primaryColorShade200,
    300: primaryColorShade300,
    400: primaryColorShade400,
    500: primaryColorShade500,
    600: primaryColorShade600,
    700: primaryColorShade700,
    800: primaryColorShade800,
    900: primaryColorShade900,
  });

  ///* Accent Color
  static const int _middleAccentColor = 0xFF29EB00;
  static const Color accentColorShade100 = Color(0xFFD8FF62);
  static const Color accentColorShade200 = Color(0xFFB7FF43);
  static const Color accentColorShade300 = Color(0xFF91FF23);
  static const Color accentColorShade400 = Color(0xFF51FF00);
  static const Color accentColorShade500 = Color(_middleAccentColor);
  static const Color accentColorShade600 = Color(0xFF00D700);
  static const Color accentColorShade700 = Color(0xFF00CC00);
  static const Color accentColorShade800 = Color(0xFF00C400);
  static const Color accentColorShade900 = Color(0xFF00B052);

  static const MaterialColor accentColor =
      MaterialColor(_middleAccentColor, <int, Color>{
    100: accentColorShade100,
    200: accentColorShade200,
    300: accentColorShade300,
    400: accentColorShade400,
    500: accentColorShade500,
    600: accentColorShade600,
    700: accentColorShade700,
    800: accentColorShade800,
    900: accentColorShade900,
  });

  
}
