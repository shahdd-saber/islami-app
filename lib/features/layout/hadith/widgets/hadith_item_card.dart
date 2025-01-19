import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import '../../../../modules/hadith_data.dart';

class HadithItemCard extends StatefulWidget {
  final HadithData hadithData;

  const HadithItemCard({super.key, required this.hadithData});

  @override
  State<HadithItemCard> createState() => _HadithItemCardState();
}

class _HadithItemCardState extends State<HadithItemCard> {
  List<HadithData> hadithDataList = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 20,
        top: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage(
            'assets/images/hadith_card_full.png',
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            widget.hadithData.hadithTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: AppColors.secondaryColor,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                Text(
                  widget.hadithData.hadithContent,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.secondaryColor,
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
