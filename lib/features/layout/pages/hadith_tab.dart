import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppAssets.hadithBg),
        ),
      ),
    );
  }
}
