import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.orange,
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.black),
        headline2: TextStyle(color: Colors.black),
        headline3: TextStyle(color: Colors.black),
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.black),
        headline4: TextStyle(color: Colors.black),
        headline5: TextStyle(color: Colors.black),
        headline6: TextStyle(color: Colors.black),
        caption: TextStyle(color: Colors.black),
      ), 
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      iconTheme: const IconThemeData(color: Colors.orange),
      inputDecorationTheme:  InputDecorationTheme( 
        prefixIconColor: Colors.orange,          
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(40.0),
          borderSide: BorderSide.none
        ),
        filled: true,
        fillColor: Colors.grey.withOpacity(0.1)
      )
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.orange,
      backgroundColor: Colors.grey,
      scaffoldBackgroundColor: Colors.grey.shade800,
      textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        headline3: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
        headline4: TextStyle(color: Colors.white),
        headline5: TextStyle(color: Colors.white),
        headline6: TextStyle(color: Colors.white),
        caption: TextStyle(color: Colors.white),
        
      ), 
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
      iconTheme: const IconThemeData(color: Colors.orange),
      inputDecorationTheme:  InputDecorationTheme(  
        prefixIconColor: Colors.orange,      
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(40.0),
          borderSide: const BorderSide(color: Colors.orange, width: 2.0)          
        ),
        filled: true,
        fillColor: Colors.transparent
      )
    );
  }
}