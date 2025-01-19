import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';

class TimesTab extends StatelessWidget {
  const TimesTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> prayerTimes = [
      {"title": "Sunrise", "time": "6:00 \n AM"},
      {"title": "Duhr", "time": "01:01 \n PM"},
      {"title": "ASR", "time": "04:38 \n PM"},
      {"title": "Maghrib", "time": "07:57 \n PM"},
      {"title": "Isha", "time": "09:30 \n PM"},
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.timesBg),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SafeArea(
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppAssets.islamiLogoFull,
                    height: 150,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "16 Jul, 2024",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.secondaryColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Pray Time",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.secondaryColor,
                                ),
                              ),
                              Text(
                                "Tuesday",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.secondaryColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "09 Muh, 1446",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.secondaryColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          viewportFraction: 0.3,
                          enableInfiniteScroll: true,
                        ),
                        items: prayerTimes.map((prayer) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF202020),
                                      Color(0xFFB19768),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.secondaryColor,
                                      blurRadius: 5,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      prayer["title"]!,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    Text(
                                      prayer["time"]!,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Next Pray - 02:32',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Icon(Icons.volume_off, color: Colors.black),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Azkar",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height * 0.26,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppAssets.azkar1)),
                        color: AppColors.secondaryColor.withOpacity(0.2),
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: AppColors.primaryColor,
                            width: 2,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 9,
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Morning Azkar",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Janna",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height * 0.26,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            AppAssets.azkar2,
                          ),
                        ),
                        color: AppColors.secondaryColor.withOpacity(0.2),
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: AppColors.primaryColor,
                            width: 2,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Evening Azkar",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Janna",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}