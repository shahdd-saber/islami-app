import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/features/layout/quran/quran_details_view.dart';
import 'package:islami_app/features/layout/quran/widgets/recent_card_widget.dart';
import 'package:islami_app/features/layout/quran/widgets/sura_card_widget.dart';
import 'package:islami_app/features/layout/quran/widgets/quran_data.dart';
import 'package:islami_app/modules/recent_data.dart';

class QuranTab extends StatelessWidget {
  final List<RecentData> recentDataList;
  final List<QuranData> quranDataList;

  QuranTab(
      {super.key, required this.recentDataList, required this.quranDataList});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppAssets.quranBg),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppAssets.islamiLogoFull),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                cursorColor: AppColors.primaryColor,
                style: TextStyle(
                  color: AppColors.titleTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                    hintText: "Sura Name",
                    hintStyle: TextStyle(
                      color: AppColors.titleTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    fillColor: AppColors.secondaryColor.withOpacity(0.5),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.primaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.primaryColor),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageIcon(
                        AssetImage(AppAssets.quranIcn),
                        color: AppColors.primaryColor,
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Text(
                "Most Recently",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor,
                ),
              ),
            ),
            SizedBox(
              height: 155,
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => RecentCardWidget(
                  recentData: recentDataList[index],
                ),
                itemCount: recentDataList.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Sura list",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.titleTextColor,
                  ),
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    QuranDetailsView.routeName,
                    arguments: quranDataList[index],
                  );
                },
                child: SuraCardWidget(
                  quranData: quranDataList[index],
                ),
              ),
              separatorBuilder: (context, index) => Divider(
                endIndent: 60,
                indent: 60,
              ),
              itemCount: quranDataList.length,
            )
          ],
        ),
      ),
    );
  }
}
