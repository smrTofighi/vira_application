import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:vira_app/constant/component.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/constant/string.dart';
import 'package:vira_app/constant/styles/textstyle.dart';
import 'package:vira_app/gen/assets.gen.dart';
import 'package:vira_app/pages/login_page.dart';
import 'package:vira_app/pages/profile_page.dart';
import 'home_page.dart';
//! Libraries ---------------------

// is the key for open drawer
final GlobalKey<ScaffoldState> _key = GlobalKey();

class MainPage extends StatelessWidget {
  RxInt selectedIndexPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    //! Return ------------------
    return SafeArea(
      child: Scaffold(
        //? key
        key: _key,
        //? Drawer
        drawer: Drawer(
          backgroundColor: SolidColors.appBar,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 6, 20, 0),
              child: ListView(
                children: [
                  ViraListTileDrawer(
                      title: 'سیدمحمد رضاتوفیقی',
                      icon: Assets.icons.user.path,
                      onTap: () {}),
                  const ViraDividerDrawer(),
                  ViraListTileDrawer(
                      title: 'آرشیو محتوا',
                      icon: Assets.icons.bookmark.path,
                      onTap: () {}),
                  ViraListTileDrawer(
                      title: 'معرفی به دوستان',
                      icon: Assets.icons.share.path,
                      onTap: () {
                        print('object');
                        Share.share(Strings.shareText);
                      }),
                  ViraListTileDrawer(
                      title: 'نسخه جدید',
                      icon: Assets.icons.update.path,
                      onTap: () {}),
                  ViraListTileDrawer(
                      title: 'درباره ما',
                      icon: Assets.icons.about.path,
                      onTap: () {}),
                  ViraListTileDrawer(
                      title: 'تماس با ما',
                      icon: Assets.icons.contactUs.path,
                      onTap: () {}),
                  ViraListTileDrawer(
                      title: 'خروج',
                      icon: Assets.icons.exit.path,
                      onTap: () {}),
                ],
              ),
            ),
          ),
        ),
        //? AppBar --------------
        appBar: AppBar(
          backgroundColor: SolidColors.appBar,
          automaticallyImplyLeading: false,

          //? Title -------------
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                color: Colors.black,
                onPressed: (() {
                  _key.currentState!.openDrawer();
                }),
                icon: ImageIcon(
                  AssetImage(Assets.icons.menu.path),
                  size: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Image(
                  image: AssetImage(Assets.logo.vTech.path),
                  height: 50,
                ),
              ),
              const Text(
                '01/03/04',
                style: TextStyles.styleDateAppBar,
              ),
            ],
          ),
        ),
        //? Body ----------------
        body: Stack(
          children: [
            //? Screen  ---------
            Positioned.fill(
              child: Obx(
                () => IndexedStack(
                  index: selectedIndexPage.value,
                  children: [
                    HomePage(size: size, textTheme: textTheme),
                    Container(),
                    Container(),
                    Container(),
                    ProfilePage(size: size, textTheme: textTheme),
                  ],
                ),
              ),
            ),

            //? Bottom Nav ------
            Positioned(
              bottom: 20,
              right: 12,
              left: 12,
              child: Obx(() => BottomNavigation(
                    size: size,
                    index: selectedIndexPage.value,
                    changeScreen: (value) {
                      selectedIndexPage.value = value;
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

//! Bottom Navigation -----------
class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {Key? key,
      required this.size,
      required this.index,
      required this.changeScreen})
      : super(key: key);
  //* Constructor

  final Size size;
  final int index;
  final Function(int) changeScreen;
  //* Variables

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: SolidColors.bottomNavoff,
          boxShadow: [
            BoxShadow(
              color: ShadowColors.shadowNav,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(1000),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(1000),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //? home-0
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: index == 0
                      ? SolidColors.bottomNavon
                      : SolidColors.bottomNavoff,
                  child: IconButton(
                    color: index == 0
                        ? SolidColors.iconWhite
                        : SolidColors.iconBlack,
                    onPressed: () => changeScreen(0),
                    icon: ImageIcon(
                      AssetImage(index == 0
                          ? Assets.icons.homeFill.path
                          : Assets.icons.home.path),
                      size: 20,
                    ),
                  ),
                ),
              ),

              //? search-1
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: index == 1
                      ? SolidColors.bottomNavon
                      : SolidColors.bottomNavoff,
                  child: IconButton(
                    color: index == 1
                        ? SolidColors.iconWhite
                        : SolidColors.iconBlack,
                    onPressed: () => changeScreen(1),
                    icon: ImageIcon(
                      AssetImage(
                        index == 1
                            ? Assets.icons.searchFill.path
                            : Assets.icons.search.path,
                      ),
                      size: 20,
                    ),
                  ),
                ),
              ),

              //? add acrticle-2
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: index == 2
                      ? SolidColors.bottomNavon
                      : SolidColors.bottomNavoff,
                  child: IconButton(
                    color: index == 2
                        ? SolidColors.iconWhite
                        : SolidColors.iconBlack,
                    onPressed: () {
                      _showSnackBarLogin(
                          context,
                          Strings.pleaseLoginForCreateArticleText,
                          Strings.loginText, (() {
                        Get.back();
                        Get.to(const LogInPage());
                      }));
                    },
                    icon: ImageIcon(
                      AssetImage(index == 2
                          ? Assets.icons.addFill.path
                          : Assets.icons.add.path),
                      size: 20,
                    ),
                  ),
                ),
              ),

              //? bookmarks-3
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: index == 3
                      ? SolidColors.bottomNavon
                      : SolidColors.bottomNavoff,
                  child: IconButton(
                    color: index == 3
                        ? SolidColors.iconWhite
                        : SolidColors.iconBlack,
                    onPressed: () => changeScreen(3),
                    icon: ImageIcon(
                      AssetImage(index == 3
                          ? Assets.icons.bookmarkFill.path
                          : Assets.icons.bookmark.path),
                      size: 20,
                    ),
                  ),
                ),
              ),

              //? profile-4
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: index == 4
                      ? SolidColors.bottomNavon
                      : SolidColors.bottomNavoff,
                  child: IconButton(
                    color: index == 4
                        ? SolidColors.iconWhite
                        : SolidColors.iconBlack,
                    onPressed: () => changeScreen(4),
                    icon: ImageIcon(
                      AssetImage(index == 4
                          ? Assets.icons.userFill.path
                          : Assets.icons.user.path),
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//! Functions

void _showSnackBarLogin(BuildContext context, String message, String textButton,
    Function() onPressed) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyles.styleBodyNormalText,
      ),
      action: SnackBarAction(
          label: textButton,
          textColor: SolidColors.themeColor,
          onPressed: onPressed),
      backgroundColor: SolidColors.snackBarColor,
    ),
  );

  // Get.snackbar('نیاز به حساب کاربری', message,
  //     mainButton: TextButton(
  //       onPressed: onPressed,
  //       child: Text(textButton)
  //     ),
  //   backgroundColor: SolidColors.snackBarColor,
  //   snackPosition: SnackPosition.BOTTOM
  // );
}
