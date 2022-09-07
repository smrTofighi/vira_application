import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/gen/assets.gen.dart';
import 'package:vira_app/models/data_models.dart';

class PadcastSingleView extends StatelessWidget {
  const PadcastSingleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: SolidColors.bgScaffoldColor,
      body: SizedBox(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 16, top: 8),
              child: SizedBox(
                width: Get.width,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: (() {
                      Get.back();
                    }),
                    icon: ImageIcon(
                      Image.asset(Assets.icons.arrowRight.path).image,
                      color: SolidColors.iconBlack,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: Get.width / 2,
              height: Get.height / 4.15,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(45)),
                image: DecorationImage(
                    image: NetworkImage(padCastList[0].imageUrl!),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              padCastList[2].title!,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              padCastList[1].recoder!,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: (() {}),
                  icon: ImageIcon(Image.asset(Assets.icons.menu.path).image),
                ),
                IconButton(
                  onPressed: (() {}),
                  icon:
                      ImageIcon(Image.asset(Assets.icons.download.path).image),
                ),
                IconButton(
                  onPressed: (() {}),
                  icon: ImageIcon(Image.asset(Assets.icons.like.path).image),
                ),
                IconButton(
                  onPressed: (() {}),
                  icon: ImageIcon(Image.asset(Assets.icons.share.path).image),
                ),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: (() {}),
                  icon: ImageIcon(
                    Image.asset(Assets.icons.forward.path).image,
                    color: SolidColors.themeColor,
                    size: 32,
                  ),
                ),
                Container(
                  
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                    color: Colors.grey[100],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: ImageIcon(
                      Image.asset(Assets.icons.play.path).image,
                      color: SolidColors.themeColor,
                      size: 38,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0
                    ),
                  ),
                ),
                IconButton(
                  onPressed: (() {}),
                  icon: ImageIcon(
                    Image.asset(Assets.icons.rewind.path).image,
                    color: SolidColors.themeColor,
                    size: 32,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
