import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sarbaz/src/app/config/constans/constans.dart';

import 'colorize.dart';
import 'fonts.dart';

class Themizer {
  Themizer._();
  
  static ThemeData get basic => ThemeData(
        fontFamily: FontConstants.sahel,
        brightness: Brightness.light,
        // primarySwatch: ,
        primaryColor: Colorize.kPrimaryColor,
        primaryColorBrightness: Brightness.light,
        secondaryHeaderColor: Colorize.kAccentColor,
        scaffoldBackgroundColor: Colorize.kBackgroundColor,
        backgroundColor: Colorize.kBackgroundColor[300],
        iconTheme: _Themizer._().iconTheme,
        appBarTheme: _Themizer._().appBarTheme,
        textTheme: _Themizer._().textTheme,
        inputDecorationTheme: _Themizer._().inputDecorationTheme,
      );

  static TextStyle get textStyle =>
      const TextStyle(fontFamily: FontConstants.sahel);
}

class _Themizer {
  _Themizer._();
  final appBarTheme = AppBarTheme(
    color: Colorize.kBackgroundColor[300],
    elevation: 5.0,
    shadowColor: Colorize.kForegroundColor[300],
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  );

  final iconTheme = IconThemeData(color: Colorize.kForegroundColor[400]);

  TextTheme get textTheme => TextTheme(
      headline1: Fonts.headline1(),
      headline2: Fonts.headline2(),
      headline3: Fonts.headline3(),
      headline4: Fonts.headline4(),
      headline5: Fonts.headline5(),
      headline6: Fonts.headline6(),
      bodyText1: Fonts.body1(),
      bodyText2: Fonts.body2(),
      subtitle1: Fonts.subtitle1(),
      subtitle2: Fonts.subtitle2(),
      caption: Fonts.caption());

  InputDecorationTheme get inputDecorationTheme => const InputDecorationTheme(
      filled: true,
      contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      errorStyle: TextStyle(
        height: 0,
      ),
      labelStyle: TextStyle(
        color: Colorize.kPrimaryColor,
        fontSize: 12.0,
      ),
      counterStyle: TextStyle(
        color: Colors.transparent,
        fontSize: 4.0,
      ),
      errorBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        borderSide: BorderSide(width: 4, color: Colors.red),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        borderSide: BorderSide(width: 4, color: Colors.red),
      ),
      focusColor: Colorize.kAccentColor,
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        borderSide: BorderSide(width: 4, color: Colorize.kAccentColor),
      ),
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        borderSide: BorderSide(width: 4, color: Colorize.kPrimaryColor),
      ));
}
