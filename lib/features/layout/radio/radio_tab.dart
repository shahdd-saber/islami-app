import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppAssets.radioBg),
        ),
      ),
    );
  }
}
