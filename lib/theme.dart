import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final Color _lightPrimaryColor = Color.fromRGBO(120, 192, 224, 1);
  static final Color _lightPrimaryVariantColor =
      Color.fromRGBO(68, 157, 209, 1);
  static final Color _lightOnPrimaryColor = Color.fromRGBO(21, 5, 120, 1);
  static final Color _lightTextColorPrimary = Colors.black;
  static final Color _appbarColorLight = Color.fromRGBO(57, 67, 183, 1);

  static final Color _darkPrimaryColor = Color.fromRGBO(64, 74, 83, 1);
  static final Color _darkPrimaryVariantColor = Color.fromRGBO(33, 39, 43, 1);
  static final Color _darkOnPrimaryColor = Color.fromRGBO(22, 33, 41, 1);
  static const Color _darkTextColorPrimary = Colors.white;
  static final Color _appbarColorDark = Color.fromRGBO(13, 25, 35, 1);

  static const Color _iconColor = Colors.white;

  static const Color _accentColorDark = Color.fromRGBO(74, 217, 217, 1);

  static final TextStyle _lightHeadingText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Rubik",
      fontSize: 18,
      fontWeight: FontWeight.bold);

  static final TextStyle _lightBodyText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Rubik",
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      fontSize: 16);

  static final TextTheme _lightTextTheme = TextTheme(
    headline1: _lightHeadingText,
    bodyText1: _lightBodyText,
  );

  static final TextStyle _darkThemeHeadingTextStyle =
      _lightHeadingText.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkThemeBodyTextStyle =
      _lightBodyText.copyWith(color: _darkTextColorPrimary);

  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkThemeHeadingTextStyle,
    bodyText1: _darkThemeBodyTextStyle,
  );

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightPrimaryColor,
    appBarTheme: AppBarTheme(
        color: _appbarColorLight, iconTheme: IconThemeData(color: _iconColor)),
    bottomAppBarColor: _appbarColorLight,
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      onPrimary: _lightOnPrimaryColor,
      secondary: _accentColorDark,
      primaryVariant: _lightPrimaryVariantColor,
    ),
    textTheme: _lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: _darkPrimaryColor,
      appBarTheme: AppBarTheme(
          color: _appbarColorDark, iconTheme: IconThemeData(color: _iconColor)),
      bottomAppBarColor: _appbarColorDark,
      colorScheme: ColorScheme.dark(
        primary: _darkPrimaryColor,
        secondary: _accentColorDark,
        onPrimary: _darkOnPrimaryColor,
        primaryVariant: _darkPrimaryVariantColor,
      ),
      textTheme: _darkTextTheme);
}
