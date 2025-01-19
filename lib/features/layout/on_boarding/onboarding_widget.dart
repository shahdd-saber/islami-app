import 'package:flutter/material.dart';

class OnBoardingWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  OnBoardingWidget({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image for onboarding page
          Image.asset(image, height: 250, width: 250),
          SizedBox(height: 20),
          // Title of the page
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          // Description text of the page
          Text(
            description,
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
