import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/constant/string.dart';
import 'package:vira_app/constant/styles/textstyle.dart';
import 'package:vira_app/gen/assets.gen.dart';
import 'package:vira_app/models/data_models.dart';
import 'package:vira_app/views/news_single_view.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SolidColors.bgScaffoldColor,
        appBar: AppBar(
          backgroundColor: SolidColors.appBarColor,
          actions: const [
            Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16.0),
              child: Text(
                '01/06/21',
                style: TextStyles.styleDateAppBar,
              ),
            )
          ],
          title: const Text(
            Strings.recentNewsText,
            style: TextStyles.styleTitleAppBar,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: (() {
              Get.back();
            }),
            icon: ImageIcon(
              Image.asset(Assets.icons.arrowRight.path).image,
              color: Colors.black,
            ),
          ),
        ),
        body: SizedBox(
          width: Get.width,
          child: ListView.builder(
            itemCount: newsPost.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Get.to(const NewsSingleView());
              },
              child: SizedBox(
                width: Get.width,
                height: 140,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                      height: 105,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(newsPost[index].imageUrl!),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 85,
                          width: Get.width / 1.7,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Text(
                              newsPost[index].title!,
                              maxLines: 3,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Get.width / 1.7,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0, left: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  newsPost[index].writer!,
                                  style: const TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  tagList[index].title!,
                                  style: TextStyles.styleTagText,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
