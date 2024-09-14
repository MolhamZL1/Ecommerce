import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

ThemeData themeArabic = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
    headlineSmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    bodySmall: TextStyle(
      height: 2,
      color: AppColor.black,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
  ),
);
ThemeData themeEnglish = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    headlineSmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    bodySmall: TextStyle(
      height: 2,
      color: AppColor.black,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
  ),
);
