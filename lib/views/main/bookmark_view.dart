import 'package:flutter/material.dart';
import 'package:vira_app/constant/string.dart';

import '../../constant/color.dart';

class BookmarkView extends StatelessWidget {
  const BookmarkView({Key? key}) : super(key: key);

  @override
  DefaultTabController build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            backgroundColor: SolidColors.themeColor,
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text(Strings.newsText),
                ),
                Tab(
                  child: Text(Strings.padcastText),
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('هیج خبری به اینجا اضافه نکردی :('),
            ),
            Center(
              child: Text('هیج پادکستی به اینجا اضافه نکردی :('),
            ),
          ],
        ),
      ),
    );
  }
}
