import 'package:flutter/material.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/theme/app_colors.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double _rotationAngle = 0.0;
  int _count = 0;

  void _OnImageClick() {
    setState(() {
      _count++;
      _rotationAngle += 10;
      if (_rotationAngle >= 360) {
        _rotationAngle = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppAssets.sebhaBg),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SafeArea(
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                AppAssets.islamiLogoFull,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
              color: AppColors.titleTextColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            // color: Colors.red,
            width: double.infinity,
            height: 500,
            alignment: Alignment.center,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: _OnImageClick,
                  child: Transform.rotate(
                    angle: _rotationAngle * 3.14159 / 180,
                    child: Image.asset(AppAssets.sebhaimg),
                  ),
                ),
                Positioned(
                  child: Text(
                    "سبحان الله",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: AppColors.titleTextColor,
                    ),
                  ),
                  top: 200,
                  bottom: 200,
                  left: 70,
                  right: 70,
                ),
                Positioned(
                  child: Text(
                    "$_count",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: AppColors.titleTextColor,
                    ),
                  ),
                  top: 270,
                  bottom: 180,
                  left: 70,
                  right: 70,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
