import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';
import 'package:flutter_application_3/view/comingsoon_screen/comingsoon_screen.dart';
import 'package:flutter_application_3/view/download_screen/download_screen.dart';
import 'package:flutter_application_3/view/home_screen/home_screen.dart';
import 'package:flutter_application_3/view/more_screen/more_screen.dart';
import 'package:flutter_application_3/view/search_screen/search_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  List<Widget> myWidgetlist = [
    HomeScreen(),
    SearchScreen(),
    ComingSoonscreen(),
    DownloadScreen(),
    MoreScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: myWidgetlist,
        index: selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorConstant.boxblack,
          currentIndex: selectedIndex,
          selectedItemColor: ColorConstant.primarywhite,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(fontSize: 8),
          unselectedLabelStyle: TextStyle(fontSize: 8),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/home (2).png",
                  scale: 24,
                  color: selectedIndex == 0
                      ? ColorConstant.primarywhite
                      : Colors.grey,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/magnifying-glass.png",
                  scale: 24,
                  color: selectedIndex == 1
                      ? ColorConstant.primarywhite
                      : Colors.grey,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/video-library.png",
                  scale: 24,
                  color: selectedIndex == 2
                      ? ColorConstant.primarywhite
                      : Colors.grey,
                ),
                label: 'Coming Soon'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/download-arrow.png",
                  scale: 24,
                  color: selectedIndex == 3
                      ? ColorConstant.primarywhite
                      : Colors.grey,
                ),
                label: 'Downloads'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/burger-bar.png",
                  scale: 24,
                  color: selectedIndex == 4
                      ? ColorConstant.primarywhite
                      : Colors.grey,
                ),
                label: 'More'),
          ]),
    );
  }
}
