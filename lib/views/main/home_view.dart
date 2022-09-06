import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/constant/component.dart';
import 'package:vira_app/constant/string.dart';
import 'package:vira_app/constant/styles/textstyle.dart';
import 'package:vira_app/views/news_single_view.dart';

import '../../models/data_models.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          hotText(),
          const SizedBox(
            height: 6,
          ),
          hotNewsList(),
          const SizedBox(
            height: 6,
          ),
          hashTagList(),
          const SizedBox(
            height: 8,
          ),
          rowTextAndViewAll(Strings.recentNewsText),
          recentNewsList(),
          rowTextAndViewAll(Strings.recentPadCastText),
          recentPadCatList(),

          //? ----------------------------
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }


  //? widgets

    Widget hotText() {
    return const Text(
          Strings.howNewsText,
          style: TextStyles.styleHotNews,
        );
  }


  Widget recentPadCatList(){
    return SizedBox(
      height: Get.height / 3.5,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
                index == padCastList.length - 1 ? 16 : 4,
                0,
                index == 0 ? 16 : 4,
                0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: Get.height / 5.3,
                    width: Get.width / 2.4,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(
                            padCastList[index].imageUrl!,
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width / 2.4,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      padCastList[index].title.toString(),
                      style: TextStyles.styleTitlePadCastPostList,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
        scrollDirection: Axis.horizontal,
        itemCount: padCastList.length,
      ),
    );
  }

  Widget recentNewsList(){
    return SizedBox(
      height: Get.height / 3.5,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Get.to(const NewsSingleView()),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  index == newsPost.length - 1 ? 16 : 4,
                  0,
                  index == 0 ? 16 : 4,
                  0),
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
                                  style:
                                      TextStyles.styleWriterAndDateNewPostList,
                                ),
                                Text(
                                  newsPost[index].date.toString(),
                                  style:
                                      TextStyles.styleWriterAndDateNewPostList,
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
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: newsPost.length,
      ),
    );
  }

  Widget hotNewsList(){
    return SizedBox(
      height: Get.height / 2.2,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(index == newsPost.length - 1 ? 24 : 8,
                8, index == 0 ? 24 : 8, 8),
            child: Stack(
              children: [
                Container(
                  height: Get.height / 2.2,
                  width: Get.width / 1.4,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                          newsPost[index].imageUrl.toString(),
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Container(
                    width: Get.width / 1.6,
                    height: Get.height / 5.5,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 8, left: 16, top: 8),
                          child: Text(
                            newsPost[index].title.toString(),
                            style: TextStyles.styleTitleHotNewsPostList,
                            maxLines: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(newsPost[index].writer.toString(),
                                  style: TextStyles
                                      .styleWritreAndViewHotNewsPostList),
                              Row(
                                children: [
                                  Text(newsPost[index].views.toString(),
                                      style: TextStyles
                                          .styleWritreAndViewHotNewsPostList),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  const Icon(
                                    Icons.remove_red_eye_rounded,
                                    size: 22,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
        itemCount: newsPost.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget hashTagList() {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(index == tagList.length - 1 ? 24 : 8,
                8, index == 0 ? 24 : 8, 8),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                  border: Border.all(color: SolidColors.hashtagBorderColor),
                  color: SolidColors.hashTagColor),
              child: Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                  child: Center(
                    child: Text(
                      tagList[index].title!,
                      style: const TextStyle(
                          color: SolidColors.hashtagBorderColor),
                    ),
                  )),
            ),
          );
        },
        physics: const BouncingScrollPhysics(),
        itemCount: tagList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
