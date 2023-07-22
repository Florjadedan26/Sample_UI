import 'package:flutter/material.dart';
import 'package:insurancescam/constant.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  final List<BottomNavigationBarItem> navigationItems = const [
    BottomNavigationBarItem(icon: Icon(kHomeIcon), label: 'HOME'),
    BottomNavigationBarItem(icon: Icon(kCalendarIcon), label: 'PLan'),
    BottomNavigationBarItem(icon: Icon(kPieChartIcon), label: 'Insight'),
    BottomNavigationBarItem(icon: Icon(kChatIcon), label: 'Chat'),
  ];

  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      items: navigationItems,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: const TextStyle (
        fontWeight: FontWeight.bold
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
