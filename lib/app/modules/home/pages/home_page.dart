import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/home/components/history-score_widget.dart';
import 'package:peter_space/app/modules/home/components/list-lessons_widget.dart';
import 'package:peter_space/app/modules/home/shared/stores/home_store.dart';
import 'package:peter_space/app/shared/components/navegation_bar_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

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
        backgroundColor: const Color(0xff9BB2E5),
        title: Text(
          'Welcome Alberto',
          style: FontStyle().span(),
        ),
        actions: [
          SizedBox(
            height: 45,
            child: CircleAvatar(
              radius: 50,
              child: ClipOval(
                child: Image.asset(
                  'assets/pet.jpg',
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavegationBarWidget(
        index: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HistoryScoreWidget(),
                    SizedBox(
                      height: 30,
                    ),
                    ListLessonsWidget(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
