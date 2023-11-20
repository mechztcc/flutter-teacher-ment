import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peter_space/app/modules/home/shared/stores/home_store.dart';
import 'package:peter_space/app/shared/components/badge_level_widget.dart';
import 'package:peter_space/app/shared/components/navegation_bar_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peter_space/app/shared/components/simple-badge_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeStore store;
  String? name;

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeStore>();
    store.initStore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) => Column(
            children: [
              Text(
                'Welcome ${store.name}',
                style: GoogleFonts.rajdhani(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
        toolbarHeight: 70,
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                color: Colors.white,
                icon: const Icon(Icons.person),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: const NavegationBarWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Running Lessons'),
          Container(
            child: const Row(
              children: [
                BadgeLevelWidget(
                  level: 3,
                  label: 'Expert',
                ),
                SimpleBadgeWidget(
                  label: '5 Points',
                  type: 'points',
                ),
                SimpleBadgeWidget(
                  label: '5 Questions',
                  type: 'questions',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
