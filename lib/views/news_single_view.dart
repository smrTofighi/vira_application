import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/constant/styles/textstyle.dart';
import 'package:vira_app/gen/assets.gen.dart';
import 'package:vira_app/models/data_models.dart';

class NewsSingleView extends StatelessWidget {
  const NewsSingleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   actions: const [
        //     Padding(
        //       padding: EdgeInsets.only(top: 16.0, left: 12.0),
        //       child: Text(
        //         '21 شهریور 1401',
        //         style: TextStyles.styleDateAppBar,
        //       ),
        //     ),
        //   ],
        //   leading: IconButton(
        //     onPressed: (() {}),
        //     icon: ImageIcon(
        //       Image.asset(Assets.icons.arrowRight.path).image,
        //       color: Colors.black,
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: Get.width,
                    height: Get.height / 3.2,
                    decoration: BoxDecoration(
                      // borderRadius: const BorderRadius.only(
                      //   topRight: Radius.circular(45),
                      //   topLeft: Radius.circular(45),
                      // ),
                      image: DecorationImage(
                          image: NetworkImage(newsSingle['image']),
                          fit: BoxFit.cover),
                    ),
                    foregroundDecoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: GradiantColors.blogPost,
                        begin: Alignment.topCenter,
                        end: Alignment.center,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12,6,0,0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: (() {}),
                            icon: ImageIcon(
                              Image.asset(Assets.icons.arrowRight.path).image,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            ' شهریور 1401',
                            style: TextStyles.styleDateAppBarSingleView,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  newsSingle['title'],
                  style: TextStyles.styleHotNews,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(newsSingle['tag'], style: TextStyles.styleTagText),
                    Text(
                      newsSingle['date'],
                      style: TextStyles.styleDateText,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                  width: Get.width,
                  child: Text(newsSingle['description']),
                ),
              ),
              const SizedBox(
                height: 70,
              )
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 28, right: 20, left: 20),
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
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: SolidColors.bottomNavon,
                  child: IconButton(
                    color: SolidColors.iconWhite,
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage(Assets.icons.menuDots.path),
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: SolidColors.bottomNavoff,
                  child: IconButton(
                    color: SolidColors.iconBlack,
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage(Assets.icons.share.path),
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: SolidColors.bottomNavoff,
                  child: IconButton(
                    color: SolidColors.iconBlack,
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage(Assets.icons.bookmark.path),
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: SolidColors.bottomNavoff,
                  child: IconButton(
                    color: SolidColors.iconBlack,
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage(Assets.icons.like.path),
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
