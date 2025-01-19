import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(top: 8, left: 8, right: 8),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          width: 390,
          height: 116,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  AppAssets.hadithBottomShape,
                  fit: BoxFit.cover,
                  color: AppColors.secondaryColor.withOpacity(0.5),
                  width: double.infinity,
                  height: 80,
                ),
              ),
              Positioned(
                child: Image.asset(
                  AppAssets.closedAudio,
                  width: 44,
                  height: 44,
                ),
                bottom: 10,
                left: 120,
                right: 70,
              ),
              Positioned(
                child: Text(
                  "Radio Ibrahim Al-Akdar",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                top: 10,
                left: 60,
              ),
            ],
          ),
        ),
        Container(
          width: 390,
          height: 116,
          padding: EdgeInsets.only(top: 8, left: 8, right: 8),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  AppAssets.audio_img,
                  fit: BoxFit.cover,
                  color: AppColors.secondaryColor.withOpacity(0.5),
                  width: double.infinity,
                  height: 80,
                ),
              ),
              Positioned(
                child: Image.asset(
                  AppAssets.openedAudio,
                  width: 44,
                  height: 44,
                ),
                bottom: 10,
                left: 120,
                right: 70,
              ),
              Positioned(
                child: Text(
                  "Radio Al-Qaria Yassen",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                top: 10,
                left: 70,
              ),
            ],
          ),
        ),
        Container(
          width: 390,
          height: 116,
          padding: EdgeInsets.only(top: 8, left: 8, right: 8),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  AppAssets.hadithBottomShape,
                  fit: BoxFit.cover,
                  color: AppColors.secondaryColor.withOpacity(0.5),
                  width: double.infinity,
                  height: 80,
                ),
              ),
              Positioned(
                child: Image.asset(
                  AppAssets.closedAudio,
                  width: 44,
                  height: 44,
                ),
                bottom: 10,
                left: 120,
                right: 70,
              ),
              Positioned(
                child: Text(
                  "Radio Ahmed Al-trabulsi",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                top: 10,
                left: 60,
              ),
            ],
          ),
        ),
        Container(
          width: 390,
          height: 116,
          padding: EdgeInsets.only(top: 8, left: 8, right: 8),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  AppAssets.hadithBottomShape,
                  fit: BoxFit.cover,
                  color: AppColors.secondaryColor.withOpacity(0.5),
                  width: double.infinity,
                  height: 80,
                ),
              ),
              Positioned(
                child: Image.asset(
                  AppAssets.closedAudio,
                  width: 44,
                  height: 44,
                ),
                bottom: 10,
                left: 120,
                right: 70,
              ),
              Positioned(
                child: Text(
                  "Radio Addokali Mohammad Alalim",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                top: 10,
                left: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
