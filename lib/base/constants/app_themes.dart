import 'package:flutter/material.dart';

import '../utils/shared_pref_utils.dart';
import 'app_colors.dart';
import 'app_styles.dart';


normalTheme(BuildContext context) {
  return ThemeData(
    fontFamily: fontFamily,
    primaryColor: Colors.white,
    accentColor: ACCENT_COLOR,
    disabledColor: Colors.grey,
    cardColor: Colors.white,
    canvasColor: Colors.white,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: getIsDarkMode() ? Colors.white : Colors.black,
      selectionColor: Colors.white,
      selectionHandleColor: getIsDarkMode() ? Colors.white : Colors.black,
    ),
    brightness: Brightness.light,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: const ColorScheme.light(),
        buttonColor: Colors.black,
        splashColor: Colors.white),
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
    ),
  );
}

lightTheme(BuildContext context) {
  return ThemeData(
    fontFamily: fontFamily,
    primarySwatch: Colors.blue,
    primaryColor: Colors.white,
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Colors.white,
    canvasColor: Colors.white,
    brightness: Brightness.light,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: const ColorScheme.light(),
        buttonColor: Colors.blue,
        splashColor: Colors.white),
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
    ),
  );
}

darkTheme(BuildContext context) {
  return ThemeData(
    fontFamily: fontFamily,
    primarySwatch: Colors.blue,
    primaryColor: ACCENT_COLOR,
    accentColor: ACCENT_COLOR,
    disabledColor: Colors.grey,
    cardColor: const Color(0xff1f2124),
    scaffoldBackgroundColor: ACCENT_COLOR,
    canvasColor: ACCENT_COLOR,
    brightness: Brightness.dark,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: const ColorScheme.dark(),
        buttonColor: Colors.blue,
        splashColor: Colors.black),
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      backgroundColor: ACCENT_COLOR
    ),
  );
}