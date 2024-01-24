import 'package:coffee_insight/pages/settings_page.dart';
import 'package:coffee_insight/pages/shops_page.dart';
import 'package:coffee_insight/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:coffee_insight/pages/home_page.dart';
import 'package:coffee_insight/pages/shops_page.dart';
import 'package:coffee_insight/pages/settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  Color selectedColor = AppColors.primary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: currentIndex == 0 ? selectedColor : null,
            ),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/coffee.svg',
              color: currentIndex == 1 ? selectedColor : null,
            ),
            label: 'Coffee',
          ),

          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              color: currentIndex == 2 ? selectedColor : null,
            ),
            label: 'Search',
          ),

          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/maps.svg',
              color: currentIndex == 3 ? selectedColor : null,
            ),
            label: 'Maps',
          ),

          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/settings.svg',
              color: currentIndex == 4 ? selectedColor : null,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: AppColors.secondary,
        selectedItemColor: AppColors.primary,
      ),
      resizeToAvoidBottomInset: false
    );
  }

  final pages = [
    HomePage(),
    ShopsPage(),
    Center(
      child: Text('Search', style: TextStyle(color: Color(0xFF4F200D))),
    ),
    Center(
      child: Text('Maps', style: TextStyle(color: Color(0xFF4F200D))),
    ),
    SettingsPage()
  ];
}
