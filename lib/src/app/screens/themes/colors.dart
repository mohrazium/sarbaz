import 'package:flutter/material.dart';

class SColors {
  SColors._();

  static const int _middleBackgroundColor = 0xFFF1F3F4;
  static const int _middleForegroundColor = 0xFF36403F;
  static const int _middleAccentColor = 0xFF1B6FA6;
  static const int _middlePrimaryColor = 0xFF7FD903;

  static const MaterialColor kBackgroundColor =
      MaterialColor(_middleBackgroundColor, <int, Color>{
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFCFCFC),
    500: const Color(_middleBackgroundColor),
    600: const Color(0xFFB3B6C2),
    700: const Color(0xFF898EA5),
  });

  static const MaterialColor kForegroundColor =
      MaterialColor(_middleForegroundColor, <int, Color>{
    300: const Color(0xFF6C7978),
    400: const Color(0xFF505C5B),
    500: const Color(_middleForegroundColor),
    600: const Color(0xFF171C1C),
    700: const Color(0xFF101F1E),
  });

  static const MaterialColor kAccentColor =
      MaterialColor(_middleAccentColor, <int, Color>{
    300: const Color(0xFF5F9DC6),
    400: const Color(0xFF3A83B2),
    500: const Color(_middleAccentColor),
    600: const Color(0xFF08578B),
    700: const Color(0xFF05446D),
  });

  static const MaterialColor kPrimaryColor =
      MaterialColor(_middlePrimaryColor, <int, Color>{
    300: const Color(0xFFAFED59),
    400: const Color(0xFF9BE930),
    500: const Color(_middlePrimaryColor),
    600: const Color(0xFF64AC00),
    700: const Color(0xFF4E8700),
  });
}
