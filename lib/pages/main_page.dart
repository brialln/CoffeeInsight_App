import 'package:coffee_insight/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:coffee_insight/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/home.svg'),
              label: 'Home'),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/coffee.svg'),
              label: 'Coffee'),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/search.svg'),
              label: 'Search'),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/maps.svg'),
              label: 'Maps'),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/settings.svg'),
              label: 'Settings'),
        ],
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.secondary,

      ),

    );
  }
  final pages = [
    HomePage(),
    Center(
      child: Text('Shops'),
    ),
    Center(
      child: Text('Search'),
    ),
    Center(
      child: Text('Maps'),
    ),
    Center(
      child: Text('Settings'),
    )
  ];
}
