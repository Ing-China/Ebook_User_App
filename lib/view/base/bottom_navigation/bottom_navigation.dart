import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:bro_s_journey/view/screens/about/about_screen.dart';
import 'package:bro_s_journey/view/screens/book/book_screen.dart';
import 'package:bro_s_journey/view/screens/bookmarks/bookmark_screen.dart';
import 'package:bro_s_journey/view/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    BookScreen(),
    BookmarkScreen(),
    AboutScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _iconColor(int index) {
    return _selectedIndex == index ? AppColors.primaryColor : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1 / 5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                index: 0,
                icon: CustomIcons.home,
                label: 'Home',
              ),
              _buildNavItem(
                index: 1,
                icon: CustomIcons.book,
                label: 'Books',
              ),
              _buildNavItem(
                index: 2,
                icon: CustomIcons.bookMark,
                label: 'BookMark',
              ),
              _buildNavItem(
                index: 3,
                icon: CustomIcons.about,
                label: 'Developer',
              ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector _buildNavItem(
      {required int index, required String icon, required String label}) {
    return GestureDetector(
      onTap: () {
        _onItemTapped(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            icon,
            color: _iconColor(index),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: _iconColor(index),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
