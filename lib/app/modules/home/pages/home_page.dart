import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/home/components/card-running-lesson_widget.dart';
import 'package:peter_space/app/modules/home/components/user-information_widget.dart';
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
      bottomNavigationBar: const NavegationBarWidget(
        index: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Observer(
                builder: (_) => UserInformationWidget(name: store.name!),
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .9,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Running Lessons',
                            style: FontStyle().subtitle(),
                          ),
                        ],
                      ),
                      const CardRunningLessonWidget(),
                      const CardRunningLessonWidget(),
                      const CardRunningLessonWidget(),
                      const CardRunningLessonWidget(),
                      const CardRunningLessonWidget(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
