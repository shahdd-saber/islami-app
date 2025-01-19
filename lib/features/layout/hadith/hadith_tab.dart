import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/features/layout/hadith/widgets/hadith_item_card.dart';
import 'package:islami_app/modules/hadith_data.dart';
import '../../../core/constants/app_assets.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<HadithData> hadithDataList = [];

  @override
  void initState() {
    super.initState();
    loadHadithData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppAssets.hadithBg),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SafeArea(
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(AppAssets.islamiLogoFull),
            ),
          ),
          Expanded(
            child: hadithDataList.isEmpty
                ? Center(child: CircularProgressIndicator())
                : CarouselSlider(
                    items: hadithDataList.map(
                      (e) {
                        return HadithItemCard(hadithData: e);
                      },
                    ).toList(),
                    options: CarouselOptions(
                      aspectRatio: 0.7,
                      viewportFraction: 0.68,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  void loadHadithData() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');

    List<String> allHadithList = content.split('#');

    List<HadithData> loadedHadithData = [];

    for (var element in allHadithList) {
      String singleHadith = element.trim();
      int index = singleHadith.indexOf("\n");

      if (index != -1) {
        String hadithTitle = singleHadith.substring(0, index);
        String hadithContent = singleHadith.substring(index + 1);

        var hadithData = HadithData(
          hadithTitle: hadithTitle,
          hadithContent: hadithContent,
        );

        loadedHadithData.add(hadithData);
      }
    }

    setState(() {
      hadithDataList = loadedHadithData;
    });
  }
}
