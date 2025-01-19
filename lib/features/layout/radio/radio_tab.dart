import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/features/layout/radio/widgets/radio_widget.dart';
import 'package:islami_app/features/layout/radio/widgets/reciters_widget.dart';
import '../../../core/constants/app_assets.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  int selectedIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppAssets.radioBg),
        ),
      ),
      child: Column(
        children: [
          SafeArea(
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(AppAssets.islamiLogoFull),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Radio Button
              Container(
                width: 185,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0;
                      _pageController.jumpToPage(0);
                    });
                    // Navigator.pushNamed(context, RadioViewPage.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: selectedIndex == 0
                        ? AppColors.secondaryColor
                        : AppColors.primaryColor,
                    backgroundColor: selectedIndex == 0
                        ? AppColors.primaryColor
                        : AppColors.secondaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Text(
                    'Radio',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(width: 10),
              // Reciter Button
              Container(
                width: 185,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 1;
                      _pageController.jumpToPage(1);
                    });
                    // Navigator.pushNamed(context, 'RecitersViewPage');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: selectedIndex == 1
                        ? AppColors.secondaryColor
                        : AppColors.primaryColor,
                    backgroundColor: selectedIndex == 1
                        ? AppColors.primaryColor
                        : AppColors.secondaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Text(
                    'Reciters',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              children: [RadioWidget(), RecitersWidget()],
            ),
          ),
        ],
      ),
    );
  }
}
