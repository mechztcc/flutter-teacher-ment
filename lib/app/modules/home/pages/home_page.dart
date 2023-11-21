import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/home/components/list-lessons_widget.dart';
import 'package:peter_space/app/modules/home/shared/stores/home_store.dart';
import 'package:peter_space/app/shared/components/navegation_bar_widget.dart';

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
      bottomNavigationBar: const NavegationBarWidget(
        index: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff9BB2E5),
                  Color.fromARGB(255, 197, 214, 252)
                ], begin: Alignment.topCenter),
              ),
              child: ListLessonsWidget(),
            )
          ],
        ),
      ),
    );
  }
}
