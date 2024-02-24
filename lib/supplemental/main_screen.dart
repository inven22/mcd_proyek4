import 'package:flutter/material.dart';
import 'package:mcd/constants.dart';
import 'package:mcd/supplemental/home_screen.dart';
import 'package:mcd/pages/login_page.dart';
import 'package:mcd/supplemental/barang_like_screen.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 0;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 0 ? Iconsax.home5 : Iconsax.home,
                    color: currentTab == 0 ? kprimaryColor : Colors.grey,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 0 ? kprimaryColor : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
             onTap: () {
    // Add any functionality for the dashboard button
    // For example, navigate to a new screen or perform a logout action
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => QuicklikeScreen()), // Replace YourLogoutScreen with your actual logout screen
    );
  }, 
              child: Column(
                children: [
                  Icon(
                    currentTab == 1 ? Iconsax.heart5 : Iconsax.heart,
                    color: currentTab == 1 ? kprimaryColor : Colors.grey,
                  ),
                  Text(
                    "Favorites saya",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 1 ? kprimaryColor : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            
          
            GestureDetector(
               onTap: () {
    // Add any functionality for the dashboard button
    // For example, navigate to a new screen or perform a logout action
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()), // Replace YourLogoutScreen with your actual logout screen
    );
  },
              child: Column(
                children: [
                  Icon(
                    currentTab == 3 ? Iconsax.setting5 : Iconsax.setting,
                    color: currentTab == 3 ? kprimaryColor : Colors.grey,
                  ),
                  Text(
                    "Keluar",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 3 ? kprimaryColor : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
