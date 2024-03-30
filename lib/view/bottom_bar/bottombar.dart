import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:sellgo/theme/colors.dart';
import 'package:sellgo/view/add_item/additem.dart';
import 'package:sellgo/view/favourites/favourites.dart';
import 'package:sellgo/view/home_screen/home.dart';
import 'package:sellgo/view/profile/profile.dart';

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
        selectedItemColor: colors().blue,
        unselectedItemColor: colors().black,
        elevation: 9,
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(EneftyIcons.home_outline),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(EneftyIcons.heart_outline),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(EneftyIcons.add_square_outline),
            label: 'Add Item',
          ),
          BottomNavigationBarItem(
            icon: Icon(EneftyIcons.profile_circle_outline),
            label: 'Person',
          ),
        ],
      ),
    );
  }

  final List tabs = [HomeScreen(), Favourites(), AddItem(), Profile()];
}
