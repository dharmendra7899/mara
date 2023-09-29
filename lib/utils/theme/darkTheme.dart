import 'package:flutter/material.dart';

ThemeData dark({Color color = Colors.white}) => ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: const Color(0xff1A64C3),
      primaryColorDark: const Color(0xff581159),
      disabledColor: Colors.grey,
    );
