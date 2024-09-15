import 'package:bro_s_journey/utils/icons.dart';
import 'package:bro_s_journey/view/screens/about/about_screen.dart';
import 'package:bro_s_journey/view/screens/book/book_screen.dart';
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
    AboutScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _iconColor(int index) {
    return _selectedIndex == index ? Colors.black : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              CustomIcons.home,
              color: _iconColor(0),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              CustomIcons.book,
              color: _iconColor(1),
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              CustomIcons.about,
              color: _iconColor(2),
            ),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 0,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
