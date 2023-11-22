import 'package:flutter/material.dart';
import 'package:peter_space/app/modules/home/components/card-running-lesson_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class ListLessonsWidget extends StatelessWidget {
  final String title;
  const ListLessonsWidget({Key? key, this.title = "ListLessonsWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Running Lessons',
            style: FontStyle().subtitle(),
          ),
          const SizedBox(
            height: 15,
          ),
          CardRunningLessonWidget(),
          CardRunningLessonWidget(),
          CardRunningLessonWidget(),
          CardRunningLessonWidget(),
          CardRunningLessonWidget(),
        ],
      ),
    );
  }
}
