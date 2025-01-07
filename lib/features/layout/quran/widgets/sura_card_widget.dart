import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/features/layout/quran/widgets/quran_data.dart';
import '../../../../core/theme/app_colors.dart';

class SuraCardWidget extends StatelessWidget {
  final QuranData quranData;

  const SuraCardWidget({super.key, required this.quranData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.suraNumberIcn,
                ),
              ),
            ),
            child: Text(
              quranData.suraId,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.titleTextColor,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                quranData.suraNameEn,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "${quranData.suraVerses} Verses",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            quranData.suraNameAr,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.titleTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
