import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/models/data_models.dart';
import 'package:vira_app/views/padcast_single_view.dart';
import '../constant/string.dart';
import '../constant/styles/textstyle.dart';
import '../gen/assets.gen.dart';

class PadcatsListView extends StatelessWidget {
  const PadcatsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
          Strings.recentPadCastText,
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
          physics: const BouncingScrollPhysics(),
          itemCount: padCastList.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Get.to(const PadcastSingleView());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: Get.width,
                height: 140,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      height: 105,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(padCastList[index].imageUrl!),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          padCastList[index].title!,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'توسط ' + padCastList[index].recoder!,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey[600]),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          width: Get.width / 1.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '20 دقیقه',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey[800]),
                              ),
                              Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(100),
                                    ),
                                    color: SolidColors.themeColor),
                                child: const Icon(
                                  Icons.play_arrow_rounded,
                                  color: SolidColors.iconWhite,
                                  size: 22,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
