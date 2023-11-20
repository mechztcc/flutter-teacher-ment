import 'package:flutter/material.dart';

class NavegationBarWidget extends StatelessWidget {
  final String title;
  const NavegationBarWidget({Key? key, this.title = "NavegationBarWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.house), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle), label: 'Team'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
    );
  }
}
