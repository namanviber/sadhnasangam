import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    // inputDecorationTheme: InputDecorationTheme(
    //   enabledBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(10),
    //     borderSide: const BorderSide(
    //       color: Colors.deepOrange,
    //     ),
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(10),
    //     borderSide: const BorderSide(
    //       color: Colors.deepOrange,
    //     ),
    //   ),
    // ),
    primaryColor: Colors.deepOrange,
    scaffoldBackgroundColor: Colors.white,
    // canvasColor: Colors.deepOrange,
    // cardColor: Colors.deepOrange,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(
      titleMedium: TextStyle(color: Color(0xFF77838F), fontSize: 17),
      titleLarge: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(color: Colors.deepOrange, fontSize: 12),
      titleSmall: TextStyle(color: Colors.deepOrange, fontSize: 20),
      bodySmall: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
      headlineLarge: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    ),
  );
}
