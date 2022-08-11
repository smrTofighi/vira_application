import 'package:flutter/material.dart';
import 'package:vira_app/constant/styles/textstyle.dart';

class TextFieldDecoration {
  static const InputDecoration decorationEmail = InputDecoration(
    labelText: "ایمیل",
    labelStyle: TextStyles.styleTextButton,
    
  );
  static const InputDecoration decorationPassword = InputDecoration(
    labelText: "رمز عبور",
    labelStyle: TextStyles.styleTextButton,
  );
  static const InputDecoration decorationFullName = InputDecoration(
    labelText: "نام و نام خانوادگی ",
    labelStyle: TextStyles.styleTextButton,
  );
}
