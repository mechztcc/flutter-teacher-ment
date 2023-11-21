import 'package:flutter/material.dart';
import 'package:peter_space/app/modules/home/components/card-running-lesson_widget.dart';

class ListLessonsWidget extends StatelessWidget {
  final String title;
  const ListLessonsWidget({Key? key, this.title = "ListLessonsWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CardRunningLessonWidget(),
        CardRunningLessonWidget(),
        CardRunningLessonWidget(),
        CardRunningLessonWidget(),
        CardRunningLessonWidget(),
      ],
    );
  }
}
