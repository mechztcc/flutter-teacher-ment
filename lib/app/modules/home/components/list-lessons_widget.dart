import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/home/components/card-running-lesson_widget.dart';
import 'package:peter_space/app/modules/home/components/not_found_lessons_widget.dart';
import 'package:peter_space/app/modules/home/shared/stores/home_store.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class ListLessonsWidget extends StatefulWidget {
  final String title;
  const ListLessonsWidget({Key? key, this.title = "ListLessonsWidget"})
      : super(key: key);

  @override
  State<ListLessonsWidget> createState() => _ListLessonsWidgetState();
}

class _ListLessonsWidgetState extends State<ListLessonsWidget> {
  late final HomeStore store;
  String? name;

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeStore>();
    store.initStore();
    store.listLessons();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Atividades',
            style: FontStyle().subtitle(),
          ),
          Text(
            'As atividades ficam disponíveis assim que o seu professor enviar.',
            style: FontStyle().small(),
          ),
          const SizedBox(
            height: 15,
          ),
          Observer(
            builder: (context) => SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                itemCount: store.lessons?.length ?? 0,
                itemBuilder: (_, __) {
                  for (var item in store.lessons ?? [])
                    return CardRunningLessonWidget(
                      lesson: item,
                    );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
