import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/constant/string.dart';
import 'styles/textstyle.dart';


Widget rowTextAndViewAll(String text, Function() onPressed) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            text,
            style: TextStyles.styleHeadline,
          ),
        ),
        TextButton(onPressed: onPressed, child: Text(
          Strings.viewAllText,
          style: TextStyles.styleViewAllText,
        ),)
      ],
    ),
  );
}

//? this is the divider for drawer
class ViraDividerDrawer extends StatelessWidget {
  const ViraDividerDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1.5,
      color: SolidColors.dividerColor,
    );
  }
}

//? this is the list tile for drawer
class ViraListTileDrawer extends StatelessWidget {
  const ViraListTileDrawer(
      {Key? key, required this.title, required this.icon, required this.onTap})
      : super(key: key);
  final String title;
  final String icon;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (onTap),
      splashColor: SolidColors.themeColor,
      child: SizedBox(
        width: Get.width,
        height: 60,
        child: Row(
          children: [
            ImageIcon(
              AssetImage(icon),
              color: SolidColors.themeColor,
              size: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(title, style: TextStyles.styleTitleDrawer)
          ],
        ),
      ),
    );
  }
}

//? this is the elevated button with icons => for signup with google
class ViraElevatedButtonIcon extends StatelessWidget {
  const ViraElevatedButtonIcon({
    Key? key,
    required this.iconPath,
    required this.color,
    required this.onPressed,
  }) : super(key: key);
  final String iconPath;
  final Color color;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: ImageIcon(
        AssetImage(iconPath),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
    );
  }
}

//? this is the textfield
class ViraTextField extends StatelessWidget {
  const ViraTextField(
      {Key? key, required this.cursorColor, required this.decoration})
      : super(key: key);
  final Color cursorColor;
  final InputDecoration decoration;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: cursorColor,
      style: TextStyles.styleTextField,
      decoration: decoration,
    );
  }
}

//? this is the elevated button
class ViraElevatedButton extends StatelessWidget {
  const ViraElevatedButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.styleTextEleVatedButton,
      ),
    );
  }
}

//? this is the Row with text and text button => for example in signup screen you have an account? login
class ViraRowTextAndButtonText extends StatelessWidget {
  const ViraRowTextAndButtonText(
      {Key? key,
      required this.text,
      required this.textButton,
      required this.onPressed})
      : super(key: key);
  final String text;
  final String textButton;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyles.styleBodyNormalText,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            textButton,
            style: TextStyles.styleTextButton,
          ),
        )
      ],
    );
  }
}

//? this is the text and button for profile screen
class ViraTextAndButton extends StatelessWidget {
  const ViraTextAndButton({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width / 1.1,
        height: 90,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: SolidColors.bgButtonProfile,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 220,
              child: Row(
                children: [
                  // Container(
                  //   height: 38,
                  //   width: 38,
                  //   decoration: BoxDecoration(
                  //       borderRadius: const BorderRadius.all(
                  //         Radius.circular(5),
                  //       ),
                  //       color:
                  //           Colors.purple[200]?.withOpacity(0.5)),
                  //   child: ImageIcon(Assets.icons.paper,
                  //   size: 1,),
                  // ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    title,
                    style: TextStyles.styleBodyBoldText,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: onTap,
              icon: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
