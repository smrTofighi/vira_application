import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vira_app/constant/theme.dart';
import 'package:vira_app/pages/splash_page.dart';
import 'package:get/get.dart';
//! Libaries

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark));
  //? for change color statusbar

  runApp(const ViraApp());
  //? runapp
}
//! Function Main


class ViraApp extends StatelessWidget {
  const ViraApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //? --------------------------
      
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      //? --------------------------
      
      supportedLocales: const [
        Locale('fa', 'IR'), // Farsi, Iran
      ],
      //? --------------------------

      locale: const Locale('fa', 'IR'),
      
      //? --------------------------
      theme: themeData,
      
      //? --------------------------
      home: const SplashPage(),
    );
  }
}
