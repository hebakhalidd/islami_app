import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/app_assets.dart';
import 'package:islami_app/core/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  int selectedIndex = 0;
  static const String routeName = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.primaryColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.whiteColor,
          unselectedItemColor: AppColors.blackColor,
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
          },
          items: [
            builtBottomNavBarItem(icon: AppAssets.iconQuran, label: 'Quran'),
            builtBottomNavBarItem(icon: AppAssets.iconHadeth, label: 'Hadeth'),
            builtBottomNavBarItem(icon: AppAssets.iconSebha, label: 'Sebha'),
            builtBottomNavBarItem(icon: AppAssets.iconRadio, label: 'Radio'),
            builtBottomNavBarItem(icon: AppAssets.iconTime, label: 'Time'),
          ]),
    );
  }

  BottomNavigationBarItem builtBottomNavBarItem({
    required String icon, required String label}) {
    return BottomNavigationBarItem(
        icon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              color: AppColors.lightBlackColor,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 20,
            ),
            child: ImageIcon(AssetImage(icon))),
        label: label
    );
  }
}
