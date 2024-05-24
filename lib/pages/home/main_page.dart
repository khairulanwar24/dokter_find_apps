import 'package:dokter_find_apps/pages/home/schedule_page.dart';
import 'package:dokter_find_apps/pages/home/home_page.dart';
import 'package:dokter_find_apps/pages/home/message_page.dart';
import 'package:dokter_find_apps/pages/home/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:dokter_find_apps/themes/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  void onItemTapped(int index) {
    setState(
      () {
        currentIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget buildNavItem(
        int index, String icon, String activeIcon, String label) {
      bool isSelected = currentIndex == index;
      return GestureDetector(
        onTap: () => onItemTapped(index),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
              color: isSelected
                  ? Color.fromRGBO(99, 180, 255, 0.1)
                  : transparentColor,
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Image.asset(
                currentIndex == index ? activeIcon : icon,
                width: 24,
              ),
              SizedBox(width: 8),
              if (currentIndex == index)
                Text(
                  label,
                  style: secondaryStyle,
                ),
            ],
          ),
        ),
      );
    }

    Widget customBottomNav() {
      print(currentIndex);
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        color: whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavItem(0, 'assets/icon_home.png',
                'assets/icon_home_selected.png', 'Home'),
            buildNavItem(1, 'assets/icon_calender.png',
                'assets/icon_calender_selected.png', 'Jadwal'),
            buildNavItem(2, 'assets/icon_message.png',
                'assets/icon_message_selected.png', 'Message'),
            buildNavItem(3, 'assets/icon_profile.png',
                'assets/icon_profile_selected.png', 'Profil'),
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return SchedulePage();
          break;
        case 2:
          return MessagePage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return SizedBox.shrink();
      }
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
