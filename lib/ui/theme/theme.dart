import 'package:flutter/material.dart';

import 'colors.dart';

final crudTheme = ThemeData(
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: mainColor,
  fontFamily: 'IranYekan',
  textTheme: const TextTheme(
    headline2: TextStyle(
      color: navyBlue,
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
    headline3: TextStyle(
      color: navyBlue,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    ),
    subtitle1: TextStyle(
      color: navyBlue,
      fontWeight: FontWeight.w700,
      fontSize: 18,
    ),
    subtitle2: TextStyle(
      color: navyBlue,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    overline: TextStyle(
      color: navyBlue,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    caption: TextStyle(
      color: navyBlue,
      fontWeight: FontWeight.w400,
      fontSize: 10,
    ),
    bodyText1: TextStyle(
      color: navyBlue,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
  ),
);

OutlineInputBorder outLineInputBorder({
  bool focused = false,
  Color borderColor = gray,
}) {
  return OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      Radius.circular(
        10.0,
      ),
    ),
    borderSide: BorderSide(
      color: focused ? mainColor : borderColor,
      width: 1.0,
    ),
  );
}

BoxShadow buttonBoxShadow() {
  return const BoxShadow(
    offset: Offset(0.0, 6.0),
    blurRadius: 20.0,
    spreadRadius: 0,
    color: Colors.black12,
  );
}

BoxDecoration cardBoxDecoration() {
  return BoxDecoration(
    borderRadius: const BorderRadius.all(
      Radius.circular(20),
    ),
    shape: BoxShape.rectangle,
    color: Colors.white,
    boxShadow: [buttonBoxShadow()],
  );
}
