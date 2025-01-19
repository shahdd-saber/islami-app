import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';

import '../layout_page.dart';

class OnboardingScreens extends StatefulWidget {
  static String routeName = "/onboarding";

  const OnboardingScreens({super.key});

  @override
  _OnboardingScreensState createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  final List<OnboardingScreenData> screens = [
    OnboardingScreenData(
        title: "Welcome To Islami App",
        description: "",
        image: AppAssets.onboarding_1),
    OnboardingScreenData(
        title: "Welcome To Islami",
        description: "We are very excited to have you in our community",
        image: AppAssets.onboarding_2),
    OnboardingScreenData(
        title: "Reading the Quran",
        description: "Read, and your Lord is the Most Generous",
        image: AppAssets.onboarding_3),
    OnboardingScreenData(
        title: "Bearish",
        description: "Praise the name of your Lord, the Most High",
        image: AppAssets.onboarding_4),
    OnboardingScreenData(
        title: "Holy Quran Radio",
        description: "You can listen to the Holy Quran Radio for free",
        image: AppAssets.onboarding_5),
  ];

  final PageController _pageController = PageController();
  int currentPage = 0;

  void goToPreviousPage() {
    if (currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void goToNextPage() {
    if (currentPage < screens.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: screens.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
                if (index == screens.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LayoutPage()),
                  );
                }
              },
              itemBuilder: (context, index) {
                return OnboardingScreen(data: screens[index]);
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: const BoxDecoration(
              color: Colors.black,
              border: Border(
                top: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: currentPage > 0 ? goToPreviousPage : null,
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.transparent),
                  ),
                  child: Text(
                    'Back',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                Row(
                  children: List.generate(
                    screens.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            currentPage == index ? Colors.amber : Colors.grey,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed:
                      currentPage < screens.length - 1 ? goToNextPage : null,
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.transparent),
                  ),
                  child: Text('Next',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  final OnboardingScreenData data;

  const OnboardingScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Image.asset(
              AppAssets.onboarding_1,
              height: 150,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 90.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(data.image, height: 330),
                  const SizedBox(height: 30),
                  Text(
                    data.title,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  Text(
                    data.description,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingScreenData {
  final String title;
  final String description;
  final String image;

  OnboardingScreenData({
    required this.title,
    required this.description,
    required this.image,
  });
}
