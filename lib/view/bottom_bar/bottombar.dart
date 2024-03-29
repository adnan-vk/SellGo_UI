import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:sellgo/view/home_screen/home.dart';
import 'package:sellgo/view/signup/sign_up.dart';
import 'package:sellgo/view/splash/splash.dart';

class BottomBar extends StatefulWidget {
  BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

int _currentIndex = 0;

class _BottomBarState extends State<BottomBar> {
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(EneftyIcons.home_outline),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_sharp),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(EneftyIcons.profile_circle_outline),
            label: 'Person',
          ),
        ],
      ),
    );
  }

  final List tabs = [HomeScreen(), SignUp(), Splash()];
}
