import 'package:flutter/material.dart';
import 'package:islami_app/features/layout/layout_page.dart';
import 'package:islami_app/features/splah/pages/splash_page.dart';

import 'features/layout/quran/quran_details_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (_) => SplashPage(),
        LayoutPage.routeName: (_) => LayoutPage(),
        QuranDetailsView.routeName: (_) => QuranDetailsView(),
      },
    );
  }
}
