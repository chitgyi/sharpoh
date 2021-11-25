import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shar_poh/core/utils/colors.dart';

abstract class CustomThemes {
  static final lightTheme = ThemeData(
    iconTheme: const IconThemeData(
      color: Colors.grey,
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Color(0xFF585858),
      ),
      bodyText1: TextStyle(
        color: Color(0xFF585858),
        fontWeight: FontWeight.w500,
      ),
    ),
    primarySwatch: primarySwatch,
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    shadowColor: Colors.black.withOpacity(0.1),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: const Color(0xFFF8F8F8),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      color: Colors.white,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
    ),
  );

  static final darkTheme = ThemeData(
    iconTheme: const IconThemeData(
      color: Colors.grey,
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.grey,
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Color(0xFFF8F8F8),
      ),
      bodyText1: TextStyle(
        color: Color(0xFFF8F8F8),
        fontWeight: FontWeight.w500,
      ),
      caption: TextStyle(
        color: Color(0xFFD0D0D0),
      ),
    ),
    primarySwatch: primarySwatch,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    backgroundColor: const Color(0xFF313131),
    scaffoldBackgroundColor: const Color(0xFF212121),
    cardTheme: CardTheme(
      color: const Color(0xFF313131),
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    splashColor: Colors.black12,
    shadowColor: Colors.black.withOpacity(0.1),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      color: Color(0xFF212121),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Color(0xFF212121),
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
    ),
  );
}
