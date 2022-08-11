import 'package:flutter/material.dart';
import 'package:vira_app/constant/component.dart';
import 'package:vira_app/constant/string.dart';
import 'package:vira_app/constant/styles/textstyle.dart';
import '../constant/color.dart';
import '../models/data_models.dart';
//! Imports  -----------------------


class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.size,
    required this.textTheme,
  }) : super(key: key);
  //* Constructor ---------------

  final TextTheme textTheme;
  final Size size;
  //* Variables -----------------
  
  @override
  Widget build(BuildContext context) {
    //? Return ------------------
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 6,
            ),
            //? ----------------------------

            HotNewsText(textTheme: textTheme),

            //? ----------------------------
            const SizedBox(
              height: 6,
            ),
            
            //? ----------------------------
            HotNewsPostList(size: size, textTheme: textTheme),

            //? ----------------------------
            const SizedBox(height: 6,),

            //? ----------------------------
            const HashTagList(),

            //? ----------------------------
            const SizedBox(height: 8,),

            //? ----------------------------
            RecentNewsText(textTheme: textTheme),

            //? ----------------------------
            RecentNewsPostList(size: size, textTheme: textTheme),

            //? ----------------------------
            RecentPadCastText(textTheme: textTheme),

            //? ----------------------------
            RecentPadCastPostList(size: size),

            //? ----------------------------
            const SizedBox(height: 70,),
          ],
        ),
      ),
    );
  }
}

//! WIdgets -----------------

//? text widget for recent padcast
class RecentPadCastText extends StatelessWidget {
  const RecentPadCastText({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          Strings.recentPadCastText,
          style: TextStyles.styleHeadline,
        ),
      ),
    );
  }
}

//? list of hashtags
class HashTagList extends StatelessWidget {
  const HashTagList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ViraMainTags(index: index);
        },
        physics: const BouncingScrollPhysics(),
        itemCount: tagList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

//? text widget fpr recent news
class RecentNewsText extends StatelessWidget {
  const RecentNewsText({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 12.0, bottom: 6.0),
      child: Align(
        child: Text(Strings.recentNewsText, style: TextStyles.styleHeadline),
        alignment: Alignment.centerRight,
      ),
    );
  }
}

//? text widget fot hot news
class HotNewsText extends StatelessWidget {
  const HotNewsText({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return const Text(
      Strings.howNewsText,
      style: TextStyles.styleHotNews,
    );
  }
}

//? list of hot news post
class HotNewsPostList extends StatelessWidget {
  const HotNewsPostList(
      {Key? key, required this.size, required this.textTheme})
      : super(key: key);
  final TextTheme textTheme;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 2.2,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  height: size.height / 2.2,
                  width: size.width / 1.4,
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
                    width: size.width / 1.6,
                    height: size.height / 5.5,
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
                                  style: TextStyles.styleWritreAndViewHotNewsPostList),
                              Row(
                                children: [
                                  Text(newsPost[index].views.toString(),
                                      style: TextStyles.styleWritreAndViewHotNewsPostList),
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
}

//? list of recent news post
class RecentNewsPostList extends StatelessWidget {
  const RecentNewsPostList({Key? key, required this.size, required this.textTheme})
      : super(key: key);

  final Size size;
  final TextTheme textTheme;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: index == 0 ? 0 : 8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: size.height / 5.3,
                    width: size.width / 2.0,
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
                  width: size.width / 2.4,
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
}

//? list of recent padcast post
class RecentPadCastPostList extends StatelessWidget {
  const RecentPadCastPostList({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((context, index) {
          return Padding(
            padding: EdgeInsets.only(right: index == 0 ? 0 : 8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height / 5.3,
                    width: size.width / 2.4,
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
                  width: size.width / 2.4,
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
}
