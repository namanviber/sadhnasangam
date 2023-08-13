import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sadhnasangam/utilities/themedata.dart';
import 'Screens/listenBhajans.dart';
import 'Screens/homeScreen.dart';
import 'Screens/availableServices.dart';
import 'Screens/loginScreen.dart';
import 'Screens/userSettings.dart';

void main() {
  runApp(const SadhnaSangam());
}

class SadhnaSangam extends StatelessWidget {
  const SadhnaSangam({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeClass.lightTheme,
      title: 'SandhnaSangam',
      home: HomeScreen(),
      getPages: [
        GetPage(name: '/home', page: () =>  HomeScreen()),
        GetPage(name: '/login', page: () =>  LoginScreen()),
        GetPage(name: '/inventory', page: () =>  InventoryScreen()),
        GetPage(name: '/production', page: () =>  ProductionScreen()),
        GetPage(name: '/employee', page: () =>  EmployeeScreen()),
      ],
    );
  }
}
