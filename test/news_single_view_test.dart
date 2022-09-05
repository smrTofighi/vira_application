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
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 18),
              child: Text(
                '01/03/04',
                style: TextStyles.styleDateAppBar,
              ),
            ),
          ],
          leading: IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: Get.width,
                  height: Get.height / 2,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(45)),
                    image: DecorationImage(
                        image: NetworkImage(newsSingle['image'].toString()),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                top: Get.height / 3.2,
                child: Container(
                  width: Get.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(45)),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 28, 20, 12),
                        child: Text(
                          newsSingle['title'],
                          style: TextStyles.styleHotNews,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(newsSingle['tag'],
                                style: TextStyles.styleTagText),
                            Text(
                              newsSingle['date'],
                              style: TextStyles.styleDateText,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          width: Get.width,
                          child: Text(newsSingle['description']),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                      )
                    ],
                  ),
                ),
              )
              ,
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigation(
            size: size,
          ),
        ),
        extendBody: true, 
        
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 12, left: 12),
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
