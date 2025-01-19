import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/features/layout/quran/widgets/quran_data.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "QuranDetailsView";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as QuranData;

    if (versesList.isEmpty) loadData(args.suraId.toString());

    return Scaffold(
        appBar: AppBar(
          title: Text(
            args.suraNameEn,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: AppColors.primaryColor,
          ),
        ),
        backgroundColor: AppColors.secondaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Image.asset(
                  AppAssets.hadithLeftShape,
                  width: 93,
                  height: 92,
                ),
                Expanded(
                  child: Text(
                    textAlign: TextAlign.center,
                    args.suraNameAr,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                Image.asset(
                  AppAssets.hadithRightShape,
                  width: 93,
                  height: 92,
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (BuildContext context, int index) => Text(
                  " [${index + 1}] ${versesList[index]}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
                itemCount: versesList.length,
              ),
            ),
            Image.asset(
              AppAssets.hadithBottomShape,
              width: 430,
              height: 112,
              alignment: Alignment.bottomCenter,
            ),
          ],
        ));
  }

  void loadData(String suraId) async {
    String content = await rootBundle.loadString('assets/files/$suraId.txt');
    setState(
      () {
        versesList = content.split("\n");
      },
    );
  }
}
