import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppAssets.quranBg),
        ),
      ),
    );
  }
}
