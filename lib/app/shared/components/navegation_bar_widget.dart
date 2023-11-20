import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavegationBarWidget extends StatelessWidget {
  final String title;
  final int index;
  const NavegationBarWidget({
    Key? key,
    this.title = "NavegationBarWidget",
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      backgroundColor: Colors.white,
      curve: Curves.bounceIn,
      currentIndex: index,
      onTap: (i) {
        if (i == 0) {
          Modular.to.navigate('/home');
        }

        if (i == 1) {
          Modular.to.navigate('/team');
        }

        if (i == 3) {
          Modular.to.navigate('/auth/login');
        }
      },
      items: [
        SalomonBottomBarItem(
          icon: const Icon(Icons.house),
          title: const Text('Home'),
        ),
        SalomonBottomBarItem(
            icon: const Icon(Icons.supervised_user_circle),
            title: const Text('Team')),
        SalomonBottomBarItem(
          icon: const Icon(Icons.settings),
          title: const Text('Settings'),
        ),
        SalomonBottomBarItem(
            icon: const Icon(FontAwesomeIcons.rightFromBracket),
            title: const Text(
              'Exit',
            )),
      ],
    );
  }
}
