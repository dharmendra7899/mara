import 'package:flutter/material.dart';

ThemeData light({Color color = Colors.white}) => ThemeData(
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 1,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: TextStyle(
            color: Color(0xffffffff),
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: 2)),
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xff2680EB),
        onPrimary: Color(0xffFFFFFF),
        secondary: Color(0xffFFFFFF),
        onSecondary: Color(0xffFFFFFF),
        error: Color(0xffC5151C),
        onError: Color(0xffC5151C),
        background: Color(0xffFFFFFF),
        onBackground: Color(0xffffffff),
        surface: Color(0xffffffff),
        onSurface: Color(0xffffffff)),
    indicatorColor: const Color(0xffFF0023),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color(0xff1A64C3),
    primaryColorDark: const Color(0xff581159),
    errorColor: const Color(0xffFF405A),
    disabledColor: const Color(0xff8B98A0),
    shadowColor: Colors.grey.withOpacity(0.5),
    highlightColor: const Color(0xff3E4851),
    hoverColor: const Color(0xffE7EBEE),
    hintColor: const Color(0xff2680EB),
    dividerColor: const Color(0xffE1E5E6),
    splashColor: const Color(0xffF7F8FD),
    useMaterial3: true,
    canvasColor: Colors.black,
    fontFamily: "Quicksand",
    focusColor: const Color(0xff0000001A).withOpacity(0.065),
    cardColor: Colors.black26,
    checkboxTheme: CheckboxThemeData(
      checkColor: const MaterialStatePropertyAll(Colors.white),
      fillColor: const MaterialStatePropertyAll(Color(0xff2680EB)),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.transparent, width: 5),
        borderRadius: BorderRadius.circular(2.0),
      ),
      side: MaterialStateBorderSide.resolveWith(
        (states) => const BorderSide(width: 1.0, color: Color(0xff2680EB)),
      ),
    ));
