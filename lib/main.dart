import 'package:flutter/material.dart';
import 'package:islami/screens/hadith_details_screen.dart';
import 'package:islami/screens/home.dart';
import 'package:islami/screens/sura_details_screen.dart';
import 'package:islami/utils/app_route.dart';
import 'package:islami/view/onboarding/onboarding_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.onboardingRouteName,
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
      routes: {
        AppRoute.onboardingRouteName: (context) =>OnboardingScreen(),
        AppRoute.homeRouteName: (context) =>Home(),
        AppRoute.hadithDetailsRouteName: (context) =>HadithDetailsScreen(),
        AppRoute.suraDetailsRouteName: (context) =>SuraDetailsScreen(),


      },
    );
  }

}
