import 'package:flutter/material.dart';
import 'package:islami_app/features/layout/pages/layout_page.dart';
import 'package:islami_app/features/splah/pages/splash_page.dart';

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
        SplashPage.routeName: (_) {
          return SplashPage();
        },
        LayoutPage.routeName: (_) {
          return LayoutPage();
        }
      },
    );
  }
}
