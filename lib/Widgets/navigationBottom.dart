import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({required this.selectedIndex, Key? key}) : super(key: key);
  int selectedIndex;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return FlashyTabBar(
        selectedIndex: widget.selectedIndex,
        showElevation: true,
        items: [
          FlashyTabBarItem(
              icon: const Icon(Icons.home_filled),
              title: const Text('Home'),
              inactiveColor: const Color(0xffd79578),
              activeColor: Colors.deepOrange),
          FlashyTabBarItem(
              icon: const Icon(Icons.inventory),
              title: const Text('Services'),
              inactiveColor: const Color(0xffd79578),
              activeColor: Colors.deepOrange),
          FlashyTabBarItem(
              icon: const Icon(Icons.music_note_rounded),
              title: const Text('Bhajans'),
              inactiveColor: const Color(0xffd79578),
              activeColor: Colors.deepOrange),
          FlashyTabBarItem(
              icon: const Icon(Icons.person),
              title: const Text('Profile'),
              inactiveColor: const Color(0xffd79578),
              activeColor: Colors.deepOrange),
        ],
        onItemSelected: (index) => setState(() {
              widget.selectedIndex = index;
              if (widget.selectedIndex == 0) {
                Get.toNamed('/home');
              } else if (widget.selectedIndex == 1) {
                Get.toNamed('/inventory');
              } else if (widget.selectedIndex == 2) {
                Get.toNamed('/production');
              } else if (widget.selectedIndex == 3) {
                Get.toNamed('/employee');
              }
            }));
  }
}
