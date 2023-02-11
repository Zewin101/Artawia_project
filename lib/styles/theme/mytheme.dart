import 'package:flutter/material.dart';


import 'myColors.dart';

class MyTheme {
  static ThemeData LightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      centerTitle: true,
       backgroundColor: Colors.transparent,
      elevation: 0.0,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 40,
          color: Colors.black,
          fontWeight: FontWeight.bold,

        ),
      subtitle1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 21,
        color: Colors.black,
      ),
      subtitle2: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //backgroundColor: COLORS_GOLD,
       //type: BottomNavigationBarType.fixed,
      unselectedItemColor:  WHITE_COLORS,
      selectedItemColor: BLACK_COLORS


    ),
  );


  //============================================================================
  static ThemeData DarkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    ),
    scaffoldBackgroundColor: Colors.transparent,
  );
}
