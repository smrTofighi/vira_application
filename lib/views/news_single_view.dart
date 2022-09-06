import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/constant/string.dart';
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
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
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
                    foregroundDecoration: const BoxDecoration(
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
                      padding: const EdgeInsets.fromLTRB(12, 6, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: (() {
                              Get.back();
                            }),
                            icon: ImageIcon(
                              Image.asset(Assets.icons.arrowRight.path).image,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            '01/06/21',
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
                padding: const EdgeInsets.only(right: 24, bottom: 12),
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(100),
                          ),
                          image: DecorationImage(
                              image: Image.asset(Assets.images.imageNews.path)
                                  .image,
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(newsSingle['writer'])
                  ],
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
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(Strings.relatedNewsText,
                        style: TextStyles.styleHeadline),
                    Text(Strings.viewAllText,
                        style: TextStyles.styleViewAllText)
                  ],
                ),
              ),
              relatedNewsPostList(),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
        bottomNavigationBar: bottomNavigation(),
      ),
    );
  }

  SizedBox relatedNewsPostList() {
    return SizedBox(
      height: Get.height / 3.5,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                right: index == 0 ? 16 : 0,
                left: index == newsPost.length - 1 ? 16 : 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: Get.height / 5.3,
                    width: Get.width / 2.0,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                            image: DecorationImage(
                                image: NetworkImage(
                                  newsPost[index].imageUrl.toString(),
                                ),
                                fit: BoxFit.cover),
                          ),
                          foregroundDecoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                            gradient: LinearGradient(
                              colors: GradiantColors.blogPost,
                              begin: Alignment.bottomCenter,
                              end: Alignment.center,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                newsPost[index].writer.toString(),
                                style: TextStyles.styleWriterAndDateNewPostList,
                              ),
                              Text(
                                newsPost[index].date.toString(),
                                style: TextStyles.styleWriterAndDateNewPostList,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width / 2.4,
                  child: Text(
                    newsPost[index].title.toString(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyles.styleTitleNewPostList,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: newsPost.length,
      ),
    );
  }

  Padding bottomNavigation() {
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
                  height: Get.height / 13.5,
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
                  height: Get.height / 13.5,
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
                  height: Get.height / 13.5,
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
                  height: Get.height / 13.5,
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
