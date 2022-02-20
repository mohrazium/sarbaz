part of themes;


// Font constants
const _kFontLight = FontWeight.w300;
const _kFontRegular = FontWeight.w400;
const _kFontMedium = FontWeight.w500;
// ignore: unused_element
const _kFontSemibold = FontWeight.w600;
// ignore: unused_element
const _kFontBold = FontWeight.w900;

class Fonts {
  static const TextStyle _fontStyle = TextStyle(
      inherit: false,
      color: Colorize.kForegroundColor,
      fontFamily: FontConstants.sahel,
      fontFamilyFallback: [FontConstants.vazir],
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal);

  static TextStyle headline1() {
    return _fontStyle.copyWith(
      inherit: true,
      fontSize: 96.0,
      letterSpacing: -1.5,
      fontWeight: _kFontLight,
    );
  }

  static TextStyle headline2() {
    return _fontStyle.copyWith(
      inherit: true,
      fontSize: 60.0,
      letterSpacing: -0.5,
      fontWeight: _kFontLight,
    );
  }

  static TextStyle headline3() {
    return _fontStyle.copyWith(
      inherit: true,
      fontSize: 48.0,
      letterSpacing: 0.0,
      fontWeight: _kFontRegular,
    );
  }

  static TextStyle headline4() {
    return _fontStyle.copyWith(
      inherit: true,
      fontSize: 34.0,
      letterSpacing: 0.25,
      fontWeight: _kFontRegular,
    );
  }

  static TextStyle headline5() {
    return _fontStyle.copyWith(
      inherit: true,
      letterSpacing: 0.0,
      fontSize: 24.0,
      fontWeight: _kFontRegular,
    );
  }

  static TextStyle headline6() {
    return _fontStyle.copyWith(
      inherit: true,
      fontSize: 20.0,
      letterSpacing: 0.15,
      fontWeight: _kFontRegular,
    );
  }

  static TextStyle subtitle1() {
    return _fontStyle.copyWith(
      inherit: true,
      fontSize: 16.0,
      letterSpacing: 0.15,
      fontWeight: _kFontRegular,
    );
  }

  static TextStyle subtitle2() {
    return _fontStyle.copyWith(
      inherit: true,
      fontSize: 14.0,
      letterSpacing: 0.1,
      fontWeight: _kFontMedium,
    );
  }

  static TextStyle body1() {
    return _fontStyle.copyWith(
      inherit: true,
      fontSize: 16.0,
      letterSpacing: 0.5,
      fontWeight: _kFontRegular,
    );
  }

  static TextStyle body2() {
    return _fontStyle.copyWith(
      inherit: true,
      fontSize: 14.0,
      letterSpacing: 0.25,
      fontWeight: _kFontMedium,
    );
  }

  static TextStyle button() {
    return _fontStyle.copyWith(
      inherit: true,
      fontSize: 14.0,
      letterSpacing: 1.25,
      fontWeight: _kFontMedium,
    );
  }

  static TextStyle caption() {
    return _fontStyle.copyWith(
      inherit: true,
      fontSize: 12.0,
      letterSpacing: 0.4,
      fontWeight: _kFontRegular,
    );
  }

  static TextStyle overline() {
    return _fontStyle.copyWith(
      inherit: true,
      fontSize: 12.0,
      letterSpacing: 1.5,
      fontWeight: _kFontRegular,
    );
  }
}
