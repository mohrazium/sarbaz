import 'package:flutter/material.dart';

import 'colors.dart';
import 'font_styles.dart';

class Themizer {
  Themizer._();

  static ThemeData get getTheme => new ThemeData(
        brightness: Brightness.light,
        // primarySwatch: ,
        primaryColor: Colorize.kPrimaryColor,
        primaryColorBrightness: Brightness.light,
        secondaryHeaderColor: Colorize.kAccentColor,
        scaffoldBackgroundColor: Colorize.kBackgroundColor,
        backgroundColor: Colorize.kBackgroundColor[300],
        iconTheme: _STheme._().iconTheme,
        appBarTheme: _STheme._().appBarTheme,
        textTheme: _STheme._().textTheme,
        inputDecorationTheme: _STheme._().inputDecorationTheme,
        
      );

  static TextStyle get textStyle => TextStyle(fontFamily: 'Sahel');
}

class _STheme {
  _STheme._();
  final appBarTheme = AppBarTheme(
    color: Colorize.kBackgroundColor[300],
    brightness: Brightness.light,
    elevation: 5.0,
    shadowColor: Colorize.kForegroundColor[300],
    centerTitle: true,
  );

  final iconTheme = IconThemeData(color: Colorize.kForegroundColor[400]);

  TextTheme get textTheme => TextTheme(
      headline1: SFontStyles().headline1(),
      headline2: SFontStyles().headline2(),
      headline3: SFontStyles().headline3(),
      headline4: SFontStyles().headline4(),
      headline5: SFontStyles().headline5(),
      headline6: SFontStyles().headline6(),
      bodyText1: SFontStyles().body1(),
      bodyText2: SFontStyles().body2(),
      subtitle1: SFontStyles().subtitle1(),
      subtitle2: SFontStyles().subtitle2(),
      caption: SFontStyles().caption());

  InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
      filled: true,
      labelStyle: TextStyle(
        color: Colorize.kPrimaryColor,
        fontSize: 14.0,
      ),
      counterStyle: TextStyle(
        color:Colors.transparent,
        fontSize: 5.0,
      ),
      focusColor: Colorize.kAccentColor,
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(4), bottomRight: Radius.circular(4)),
        borderSide: BorderSide(width: 4, color: Colorize.kPrimaryColor),
      ));
}
