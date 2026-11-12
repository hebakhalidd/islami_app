import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/core/utils/app_colors.dart';
import 'package:islami_app/core/utils/app_routes.dart';
import 'package:islami_app/core/utils/app_assets.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  PageViewModel buildPage(String image, String title, String body) {
    return PageViewModel(
        title: title,
        body: body,
        image: Image.asset(image),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            bodyTextStyle: TextStyle(
                color: AppColors.primaryColor, fontSize: 16)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    const buttonStyle = TextStyle(color: AppColors.primaryColor);
    return IntroductionScreen(
      globalBackgroundColor: AppColors.blackColor,
      globalHeader: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset(AppAssets.logo),
          ),
        ),
      ),
      pages: [
        buildPage(AppAssets.islami, 'Welcome To Islami App', ''),
        buildPage(AppAssets.game3, 'Welcome To Islami',
            'We Are Very Excited To Have You In Our Community'),
        buildPage(AppAssets.quran, 'Reading the Quran',
            'Read, and your lord is the Most Generous'),
        buildPage(AppAssets.Bearish, 'Bearish',
            'Praise the name of your Lord, the Most High'),
        buildPage(AppAssets.holyQuran, 'Holy Quran Radio',
            'You can listen to the Holy Quran Radio through the application for free and easily'),
      ],
      showBackButton: true,
      back: const Text('Back', style: buttonStyle,),
      next: const Text('Next', style: buttonStyle,),
      done: const Text('Finish', style: buttonStyle,),
      onDone: () {
        Navigator.pushReplacementNamed(context, AppRoutes.homeRouteName);
      },
    );
  }

}