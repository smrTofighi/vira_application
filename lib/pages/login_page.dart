import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:vira_app/constant/component.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/constant/styles/textfield.dart';
import 'package:vira_app/gen/assets.gen.dart';
import 'package:vira_app/pages/main_page.dart';
import 'package:vira_app/pages/signup_page.dart';

import '../constant/string.dart';
import '../constant/styles/textstyle.dart';

//! Libraries
class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: SizedBox(
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),

                //? ----------------------------
                const ViraImage(),

                //? ----------------------------
                const SizedBox(
                  height: 38,
                ),

                //? ----------------------------
                const TextFollowing(),

                //? ----------------------------
                const SizedBox(
                  height: 20,
                ),

                //? ----------------------------
                RowButtonsGoogleAndFacebook(size: size),

                //? ----------------------------
                const SizedBox(
                  height: 28,
                ),

                //? ----------------------------
                const ViraTextField(
                    cursorColor: SolidColors.themeColor,
                    decoration: TextFieldDecoration.decorationEmail),

                //? ----------------------------
                const SizedBox(
                  height: 28,
                ),

                //? ----------------------------
                const ViraTextField(
                    cursorColor: SolidColors.themeColor,
                    decoration: TextFieldDecoration.decorationPassword),

                //? ----------------------------
                const SizedBox(
                  height: 28,
                ),

                //? ----------------------------
                const ElevatedButtonLogin(),

                //? ----------------------------
                const SizedBox(
                  height: 14,
                ),

                //? ----------------------------
                const RowTextAndButtonSignup()
              ],
            ),
          ),
        ),
      )),
    );
  }
}

//! Widgets

//? text and button text you dont have an account
class RowTextAndButtonSignup extends StatelessWidget {
  const RowTextAndButtonSignup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: ViraRowTextAndButtonText(
        text: Strings.youDontHaveAnAccount,
        textButton: Strings.signupText,
        onPressed: (() {
          Get.off(const SignUpPage());
        }),
      ),
    );
  }
}

//? is the login button
class ElevatedButtonLogin extends StatelessWidget {
  const ElevatedButtonLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 65,
      child: ViraElevatedButton(
        text: Strings.loginText,
        onPressed: (() {
          Get.offAll(MainPage());
        }),
      ),
    );
  }
}

//? is the login button with google and facebook
class RowButtonsGoogleAndFacebook extends StatelessWidget {
  const RowButtonsGoogleAndFacebook({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width / 2.3,
            height: 65,
            child: ViraElevatedButtonIcon(
              iconPath: Assets.icons.google.path,
              color: SolidColors.googleColor,
              onPressed: (() {
                _showSnackBarUnable(context, 'کاربر گرامی این قابلیت هنوز فعال نشده است');
              }),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          SizedBox(
            width: size.width / 2.3,
            height: 65,
            child: ViraElevatedButtonIcon(
              iconPath: Assets.icons.faceBook.path,
              color: SolidColors.facebookColor,
              onPressed: (() {
                 _showSnackBarUnable(context, 'کاربر گرامی این قابلیت هنوز فعال نشده است');
              }),
            ),
          ),
        ],
      ),
    );
  }
}

//? is the following text
class TextFollowing extends StatelessWidget {
  const TextFollowing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      Strings.loginFollowingText,
      style: TextStyles.styleBodyNormalText,
    );
  }
}

//? this is vira image
class ViraImage extends StatelessWidget {
  const ViraImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        Assets.logo.vTech.path,
        height: 80,
      ),
    );
  }
}


void _showSnackBarUnable(BuildContext context, String message){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        content: Text(
          message,
          style: TextStyles.styleBodyNormalText,
        ),
        backgroundColor: SolidColors.snackBarColor,
        ),
  );
}

