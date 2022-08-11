import 'package:flutter/cupertino.dart';

import '../color.dart';

class TextStyles {

  //? Text styles for HomeScreen
  static const TextStyle styleHotNews = TextStyle(
    fontFamily: 'Fanavari',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: SolidColors.mostTextColor,
  );
  static const TextStyle styleTitleHotNewsPostList = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: SolidColors.mostTextColor,
  );
  static const TextStyle styleWritreAndViewHotNewsPostList = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: SolidColors.mostTextColor,
  );
  static const TextStyle styleHeadline = TextStyle(
    fontSize: 18,
    fontFamily: 'Fanavari',
    fontWeight: FontWeight.bold,
    color: SolidColors.mostTextColor,
  );
  static const TextStyle styleWriterAndDateNewPostList = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: SolidColors.textWhiteColor,
  );
  static const TextStyle styleTitleNewPostList = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: SolidColors.mostTextColor,
  );
  static const TextStyle styleTitlePadCastPostList = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 14,
  );
  
  //? text styles for appbar
  static const TextStyle styleDateAppBar = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: SolidColors.mostTextColor,
  );
  
  //? text styles for drawer
  static const TextStyle styleTitleDrawer = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 13,
  );
  
  //? others
  static const TextStyle styleUserName = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: SolidColors.mostTextColor,
  );
  static const TextStyle styleBodyNormalText = TextStyle(
    fontFamily: 'Samim',
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: SolidColors.mostTextColor,
  );
  static const TextStyle styleBodyBoldText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: SolidColors.mostTextColor,
  );
  
  //? text style for textfield
  static const TextStyle styleTextField = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: SolidColors.mostTextColor,
  );
  static const TextStyle styleTextFiledHint =  TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: SolidColors.hintText,
          );

  //? text style for text button
  static const TextStyle styleTextEleVatedButton = TextStyle(
    fontWeight: FontWeight.w700,
    color: SolidColors.textWhiteColor,
    fontSize: 16
  );
  static const TextStyle styleTextButton = TextStyle(
    fontFamily: 'Samim',
    color: SolidColors.themeColor,
    fontWeight: FontWeight.w700,
    fontSize: 14
  );
}
