import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'colors.dart';


// Font constants
const _kFontLight = FontWeight.w300;
const _kFontRegular = FontWeight.w400;
const _kFontMedium = FontWeight.w500;
const _kFontSemibold = FontWeight.w600;
const _kFontBold = FontWeight.w900;

class SFontStyles {
  static const TextStyle _SFontStyle = TextStyle(
      inherit: false,
      color: Colorize.kForegroundColor,
      fontFamily: 'Sahel',
      fontFamilyFallback: ['Vazir'],
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal);

  TextStyle headline1() {
    return _SFontStyle.copyWith(
      inherit: true,
      fontSize: 96.0,
      letterSpacing: -1.5,
      fontWeight: _kFontLight,
    );
  }

  TextStyle headline2() {
    return _SFontStyle.copyWith(
      inherit: true,
      fontSize: 60.0,
      letterSpacing: -0.5,
      fontWeight: _kFontLight,
    );
  }

  TextStyle headline3() {
    return _SFontStyle.copyWith(
      inherit: true,
      fontSize: 48.0,
      letterSpacing: 0.0,
      fontWeight: _kFontRegular,
    );
  }

  TextStyle headline4() {
    return _SFontStyle.copyWith(
      inherit: true,
      fontSize: 34.0,
      letterSpacing: 0.25,
      fontWeight: _kFontRegular,
    );
  }

  TextStyle headline5() {
    return _SFontStyle.copyWith(
      inherit: true,
      letterSpacing: 0.0,
      fontSize: 24.0,
      fontWeight: _kFontRegular,
    );
  }

  TextStyle headline6() {
    return _SFontStyle.copyWith(
      inherit: true,
      fontSize: 20.0,
      letterSpacing: 0.15,
      fontWeight: _kFontRegular,
    );
  }

  TextStyle subtitle1() {
    return _SFontStyle.copyWith(
      inherit: true,
      fontSize: 16.0,
      letterSpacing: 0.15,
      fontWeight: _kFontRegular,
    );
  }

  TextStyle subtitle2() {
    return _SFontStyle.copyWith(
      inherit: true,
      fontSize: 14.0,
      letterSpacing: 0.1,
      fontWeight: _kFontMedium,
    );
  }

  TextStyle body1() {
    return _SFontStyle.copyWith(
      inherit: true,
      fontSize: 16.0,
      letterSpacing: 0.5,
      fontWeight: _kFontRegular,
    );
  }

  TextStyle body2() {
    return _SFontStyle.copyWith(
      inherit: true,
      fontSize: 14.0,
      letterSpacing: 0.25,
      fontWeight: _kFontMedium,
    );
  }

  TextStyle button() {
    return _SFontStyle.copyWith(
      inherit: true,
      fontSize: 14.0,
      letterSpacing: 1.25,
      fontWeight: _kFontMedium,
    );
  }

  TextStyle caption() {
    return _SFontStyle.copyWith(
      inherit: true,
      fontSize: 12.0,
      letterSpacing: 0.4,
      fontWeight: _kFontRegular,
    );
  }

  TextStyle overline() {
    return _SFontStyle.copyWith(
      inherit: true,
      fontSize: 12.0,
      letterSpacing: 1.5,
      fontWeight: _kFontRegular,
    );
  }
}
