import 'package:flutter/material.dart';
import 'package:vira_app/constant/styles/textstyle.dart';
import 'color.dart';

var themeData = ThemeData(
  inputDecorationTheme: const InputDecorationTheme(
    hoverColor: SolidColors.themeColor,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: SolidColors.themeColor),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: SolidColors.themeColor),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    hintStyle: TextStyles.styleTextFiledHint,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    
    style: ElevatedButton.styleFrom(
      primary: SolidColors.themeColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 1.5, color: SolidColors.themeColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        primary: SolidColors.themeColor
        // backgroundColor: MaterialStateProperty.resolveWith(
        //   (states) {
        //     if (states.contains(MaterialState.pressed)) {
        //       return SolidColors.themeColor;
        //     } else {
        //       return Colors.white;
        //     }
        //   },
        // ),
        ),
  ),
  fontFamily: 'Samim',
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontFamily: 'Fanavari',
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: SolidColors.mostTextColor,
    ),
    headline2: TextStyle(
      fontSize: 18,
      fontFamily: 'Fanavari',
      fontWeight: FontWeight.bold,
      color: SolidColors.mostTextColor,
    ),
    headline3: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: SolidColors.mostTextColor,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: SolidColors.themeColor,
    ),
    bodyText1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: SolidColors.mostTextColor,
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: SolidColors.mostTextColor,
    ),
    subtitle1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: SolidColors.hintText,
    ),
    subtitle2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: SolidColors.mostTextColor,
    ),
  ),
);
