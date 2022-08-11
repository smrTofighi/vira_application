import 'package:flutter/material.dart';
import 'package:vira_app/constant/component.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/constant/string.dart';
import 'package:vira_app/gen/assets.gen.dart';

import '../constant/styles/textstyle.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, required this.size, required this.textTheme})
      : super(key: key);
  //* Constructor -----------------

  final TextTheme textTheme;
  final Size size;
  //* Variables -------------------

  @override
  Widget build(BuildContext context) {
    //? Return --------------------
    return SingleChildScrollView(
      child: Container(
        color: SolidColors.themeColor,
        child: Column(
          children: [
            //? -----------------------------
            PersonalInfo(size: size, textTheme: textTheme),

            //? -----------------------------
            BottomScreen(size: size)
          ],
        ),
      ),
    );
  }
}


//! Widgets ---------------
class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
    required this.size,
    required this.textTheme,
  }) : super(key: key);

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
      child: Container(
        width: size.width / 1.1,
        height: 115,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            //? user name
            Positioned(
              right: 16,
              top: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(Assets.images.avatar.path),
                    height: 80,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'سیدمحمد رضاتوفیقی',
                        style: TextStyles.styleUserName,
                      ),
                      Text(
                        'mrtofxn@gmail.com',
                        style: TextStyles.styleBodyNormalText,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //? setting icon
            Positioned(
              left: 0,
              top: 0,
              child: IconButton(
                color: Colors.black,
                icon: ImageIcon(
                  AssetImage(Assets.icons.settings.path),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomScreen extends StatelessWidget {
  const BottomScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height / 1.4,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: SolidColors.bgProfileFooter,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Column(
          children: [
            ViraTextAndButton(title: Strings.myFavoriteArticleText, onTap: () {}),
            //? -----------------------------

            ViraTextAndButton(title: Strings.myFavoritePadCastText, onTap: () {}),
            //? -----------------------------
            
            ViraTextAndButton(title: Strings.logOutText, onTap: () {}),
            //? -----------------------------
          ],
        ),
      ),
    );
  }
}
