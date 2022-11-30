import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.brown,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.pink),
    textTheme: const TextTheme(
        bodyText2: TextStyle(color: Colors.amber, fontSize: 20),
        bodyText1: TextStyle(color: Colors.grey, fontSize: 20)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
          padding: MaterialStateProperty.all(const EdgeInsets.all(50)),
          textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 30))),
    ),
  );

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.blue, fontSize: 20),
          bodyText1: TextStyle(color: Colors.pink, fontSize: 20)),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blue,
        disabledColor: Colors.grey,
      ),
         elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.brown),
          padding: MaterialStateProperty.all(const EdgeInsets.all(50)),
          textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 30))),
    ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.pink));
}
