part of themes;

class Colorize {
  Colorize._();

  static const int _middleBackgroundColor = 0xFFFAFAFA;
  static const int _middleForegroundColor = 0xFF36403F;
  static const int _middleAccentColor = 0xFF1B6FA6;
  static const int _middlePrimaryColor = 0xFF7FD903;

  static const Color kShadowColor = Color(0xFFEEF7E1);

  static const MaterialColor kBackgroundColor =
      MaterialColor(_middleBackgroundColor, <int, Color>{
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFCFCFC),
    500: Color(_middleBackgroundColor),
    600: Color(0xFFB3B6C2),
    700: Color(0xFF898EA5),
  });

  static const MaterialColor kForegroundColor =
      MaterialColor(_middleForegroundColor, <int, Color>{
    300: Color(0xFF6C7978),
    400: Color(0xFF505C5B),
    500: Color(_middleForegroundColor),
    600: Color(0xFF171C1C),
    700: Color(0xFF101F1E),
  });

  static const MaterialColor kAccentColor =
      MaterialColor(_middleAccentColor, <int, Color>{
    300: Color(0xFF5F9DC6),
    400: Color(0xFF3A83B2),
    500: Color(_middleAccentColor),
    600: Color(0xFF08578B),
    700: Color(0xFF05446D),
  });

  static const MaterialColor kPrimaryColor =
      MaterialColor(_middlePrimaryColor, <int, Color>{
    300: Color(0xFFAFED59),
    400: Color(0xFF9BE930),
    500: Color(_middlePrimaryColor),
    600: Color(0xFF64AC00),
    700: Color(0xFF4E8700),
  });
}
